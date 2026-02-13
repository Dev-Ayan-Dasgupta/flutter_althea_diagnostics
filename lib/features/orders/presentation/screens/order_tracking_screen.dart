import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'dart:async';
import '../../../../core/config/design/app_dimensions.dart';
import '../../../../core/config/design/app_gradients.dart';
import '../../../../core/config/design/app_shadows.dart';
import '../../../../core/config/theme/app_text_styles.dart';
import '../../../../core/config/theme/app_colors.dart';
import '../../../../core/presentation/widgets/app_button.dart';
import '../../../../core/presentation/widgets/app_card.dart';
import '../../domain/entities/order.dart';

import '../widgets/patient_authentication_sheet.dart';

class OrderTrackingScreen extends ConsumerStatefulWidget {
  final CollectionOrder order;

  const OrderTrackingScreen({super.key, required this.order});

  @override
  ConsumerState<OrderTrackingScreen> createState() =>
      _OrderTrackingScreenState();
}

class _OrderTrackingScreenState extends ConsumerState<OrderTrackingScreen> {
  GoogleMapController? _mapController;
  StreamSubscription<Position>? _positionStream;
  LatLng? _currentPosition;
  Set<Marker> _markers = {};
  Set<Polyline> _polylines = {};
  bool _isTracking = false;

  @override
  void initState() {
    super.initState();
    _initializeTracking();
  }

  @override
  void dispose() {
    _positionStream?.cancel();
    _mapController?.dispose();
    super.dispose();
  }

  Future<void> _initializeTracking() async {
    // Get current location
    final position = await Geolocator.getCurrentPosition();

    setState(() {
      _currentPosition = LatLng(position.latitude, position.longitude);
      _updateMarkers();
    });

    // Start tracking if order is active
    if (widget.order.status == OrderStatus.onTheWay ||
        widget.order.status == OrderStatus.arrived) {
      _startLocationTracking();
    }
  }

  void _startLocationTracking() {
    setState(() => _isTracking = true);

    _positionStream =
        Geolocator.getPositionStream(
          locationSettings: const LocationSettings(
            accuracy: LocationAccuracy.high,
            distanceFilter: 10, // Update every 10 meters
          ),
        ).listen((Position position) {
          setState(() {
            _currentPosition = LatLng(position.latitude, position.longitude);
            _updateMarkers();
            _updatePolyline();
          });

          // TODO: Send location update to backend
          _sendLocationUpdate(position);

          // Move camera to current position
          _mapController?.animateCamera(
            CameraUpdate.newLatLng(_currentPosition!),
          );
        });
  }

  void _stopLocationTracking() {
    _positionStream?.cancel();
    setState(() => _isTracking = false);
  }

  void _updateMarkers() {
    final markers = <Marker>{};

    // Current location marker
    if (_currentPosition != null) {
      markers.add(
        Marker(
          markerId: const MarkerId('current_location'),
          position: _currentPosition!,
          icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
          infoWindow: const InfoWindow(title: 'Your Location'),
        ),
      );
    }

    // Patient location marker
    markers.add(
      Marker(
        markerId: const MarkerId('patient_location'),
        position: LatLng(
          widget.order.patientLocation.latitude,
          widget.order.patientLocation.longitude,
        ),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
        infoWindow: InfoWindow(title: widget.order.patientName),
      ),
    );

    setState(() => _markers = markers);
  }

  void _updatePolyline() {
    if (_currentPosition != null) {
      // In production, use Google Directions API for route
      setState(() {
        _polylines = {
          Polyline(
            polylineId: const PolylineId('route'),
            points: [
              _currentPosition!,
              LatLng(
                widget.order.patientLocation.latitude,
                widget.order.patientLocation.longitude,
              ),
            ],
            color: AppColors.primary,
            width: 4,
          ),
        };
      });
    }
  }

  Future<void> _sendLocationUpdate(Position position) async {
    // TODO: Send to backend via GraphQL mutation
    print(
      'Sending location update: ${position.latitude}, ${position.longitude}',
    );
  }

  void _showAuthenticationDialog() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => PatientAuthenticationSheet(
        order: widget.order,
        onAuthenticated: () {
          // Update order status based on current state
          if (widget.order.status == OrderStatus.arrived) {
            _startCollection();
          } else if (widget.order.status == OrderStatus.collectionInProgress) {
            _completeCollection();
          }
        },
      ),
    );
  }

  void _startCollection() {
    setState(() {
      // TODO: Update order status to collectionInProgress
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text('Collection started'),
        backgroundColor: AppColors.success,
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  void _completeCollection() {
    setState(() {
      // TODO: Update order status to collectionCompleted
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text('Collection completed'),
        backgroundColor: AppColors.success,
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Map
          if (_currentPosition != null)
            GoogleMap(
              initialCameraPosition: CameraPosition(
                target: _currentPosition!,
                zoom: 15,
              ),
              markers: _markers,
              polylines: _polylines,
              myLocationEnabled: true,
              myLocationButtonEnabled: false,
              zoomControlsEnabled: false,
              onMapCreated: (controller) {
                _mapController = controller;
                // Fit bounds to show both markers
                _fitBounds();
              },
            ),

          // Top Bar
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(AppDimensions.spacing16),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      padding: const EdgeInsets.all(AppDimensions.spacing12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: AppShadows.strong,
                      ),
                      child: const Icon(Icons.arrow_back, color: Colors.black),
                    ),
                  ),
                  const SizedBox(width: AppDimensions.spacing12),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(AppDimensions.spacing12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                          AppDimensions.radiusMedium,
                        ),
                        boxShadow: AppShadows.strong,
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 8,
                            height: 8,
                            decoration: BoxDecoration(
                              color: _isTracking
                                  ? AppColors.success
                                  : AppColors.critical,
                              shape: BoxShape.circle,
                            ),
                          ),
                          const SizedBox(width: AppDimensions.spacing8),
                          Text(
                            _isTracking ? 'Tracking Active' : 'Tracking Paused',
                            style: AppTextStyles.bodyMedium.copyWith(
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: AppDimensions.spacing12),
                  GestureDetector(
                    onTap: _currentLocation,
                    child: Container(
                      padding: const EdgeInsets.all(AppDimensions.spacing12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: AppShadows.strong,
                      ),
                      child: const Icon(Icons.my_location, color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Bottom Sheet
          DraggableScrollableSheet(
            initialChildSize: 0.35,
            minChildSize: 0.2,
            maxChildSize: 0.7,
            builder: (context, scrollController) {
              return Container(
                decoration: BoxDecoration(
                  gradient: AppGradients.darkBackground,
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(AppDimensions.radiusXLarge),
                  ),
                  boxShadow: AppShadows.strong,
                ),
                child: SingleChildScrollView(
                  controller: scrollController,
                  child: Padding(
                    padding: const EdgeInsets.all(AppDimensions.spacing24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Handle
                        Center(
                          child: Container(
                            width: 40,
                            height: 4,
                            decoration: BoxDecoration(
                              color: AppColors.textSecondary,
                              borderRadius: BorderRadius.circular(2),
                            ),
                          ),
                        ),
                        const SizedBox(height: AppDimensions.spacing24),

                        // Patient Info
                        Row(
                          children: [
                            Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                gradient: AppGradients.primaryButton,
                                shape: BoxShape.circle,
                              ),
                              child: Center(
                                child: Text(
                                  widget.order.patientName
                                      .substring(0, 1)
                                      .toUpperCase(),
                                  style: AppTextStyles.h3.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: AppDimensions.spacing16),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    widget.order.patientName,
                                    style: AppTextStyles.h4.copyWith(
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: AppDimensions.spacing4,
                                  ),
                                  Text(
                                    widget.order.patientPhone,
                                    style: AppTextStyles.bodyMedium.copyWith(
                                      color: AppColors.textSecondary,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                // TODO: Call patient
                              },
                              icon: Icon(Icons.phone, color: AppColors.success),
                            ),
                          ],
                        ),

                        const SizedBox(height: AppDimensions.spacing24),

                        // Status Timeline
                        _buildStatusTimeline(),

                        const SizedBox(height: AppDimensions.spacing24),

                        // Address
                        AppCard(
                          child: Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                color: AppColors.critical,
                              ),
                              const SizedBox(width: AppDimensions.spacing12),
                              Expanded(
                                child: Text(
                                  widget.order.patientAddress,
                                  style: AppTextStyles.bodyMedium,
                                ),
                              ),
                              IconButton(
                                onPressed: () {
                                  // TODO: Open in maps app
                                },
                                icon: Icon(
                                  Icons.navigation,
                                  color: AppColors.primary,
                                ),
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(height: AppDimensions.spacing24),

                        // Action Buttons
                        _buildActionButtons(),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildStatusTimeline() {
    final statuses = [
      _StatusItem('Accepted', OrderStatus.accepted, Icons.check_circle),
      _StatusItem('On the Way', OrderStatus.onTheWay, Icons.directions_car),
      _StatusItem('Arrived', OrderStatus.arrived, Icons.location_on),
      _StatusItem(
        'Collection',
        OrderStatus.collectionInProgress,
        Icons.medical_services,
      ),
      _StatusItem(
        'Completed',
        OrderStatus.collectionCompleted,
        Icons.check_circle_outline,
      ),
    ];

    return Column(
      children: statuses.asMap().entries.map((entry) {
        final index = entry.key;
        final item = entry.value;
        final isCompleted = _isStatusCompleted(item.status);
        final isCurrent = widget.order.status == item.status;
        final isLast = index == statuses.length - 1;

        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Container(
                  width: 32,
                  height: 32,
                  decoration: BoxDecoration(
                    gradient: isCompleted || isCurrent
                        ? AppGradients.primaryButton
                        : null,
                    color: isCompleted || isCurrent
                        ? null
                        : AppColors.darkSurfaceVariant,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(item.icon, size: 16, color: Colors.white),
                ),
                if (!isLast)
                  Container(
                    width: 2,
                    height: 40,
                    color: isCompleted
                        ? AppColors.primary
                        : AppColors.darkSurfaceVariant,
                  ),
              ],
            ),
            const SizedBox(width: AppDimensions.spacing12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.label,
                    style: AppTextStyles.bodyLarge.copyWith(
                      fontWeight: isCurrent ? FontWeight.w700 : FontWeight.w600,
                      color: isCompleted || isCurrent
                          ? AppColors.textPrimary
                          : AppColors.textSecondary,
                    ),
                  ),
                  if (isCurrent)
                    Text(
                      'In Progress',
                      style: AppTextStyles.bodySmall.copyWith(
                        color: AppColors.primary,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  if (!isLast) const SizedBox(height: AppDimensions.spacing24),
                ],
              ),
            ),
          ],
        );
      }).toList(),
    );
  }

  bool _isStatusCompleted(OrderStatus status) {
    final statusOrder = [
      OrderStatus.pending,
      OrderStatus.accepted,
      OrderStatus.onTheWay,
      OrderStatus.arrived,
      OrderStatus.collectionInProgress,
      OrderStatus.collectionCompleted,
    ];

    final currentIndex = statusOrder.indexOf(widget.order.status);
    final checkIndex = statusOrder.indexOf(status);

    return checkIndex < currentIndex;
  }

  Widget _buildActionButtons() {
    switch (widget.order.status) {
      case OrderStatus.accepted:
        return AppButton(
          text: 'Start Journey',
          onPressed: () {
            _startLocationTracking();
            // TODO: Update status to onTheWay
          },
          fullWidth: true,
          size: AppButtonSize.large,
          icon: const Icon(Icons.directions_car),
        );

      case OrderStatus.onTheWay:
        return AppButton(
          text: 'Mark as Arrived',
          onPressed: () {
            _stopLocationTracking();
            // TODO: Update status to arrived
          },
          fullWidth: true,
          size: AppButtonSize.large,
          icon: const Icon(Icons.location_on),
        );

      case OrderStatus.arrived:
        return Column(
          children: [
            AppButton(
              text: 'Authenticate & Start Collection',
              onPressed: _showAuthenticationDialog,
              fullWidth: true,
              size: AppButtonSize.large,
              icon: const Icon(Icons.qr_code_scanner),
            ),
          ],
        );

      case OrderStatus.collectionInProgress:
        return AppButton(
          text: 'Complete Collection',
          onPressed: _showAuthenticationDialog,
          fullWidth: true,
          size: AppButtonSize.large,
          icon: const Icon(Icons.check_circle),
        );

      case OrderStatus.collectionCompleted:
        return AppButton(
          text: 'Mark as Delivered',
          onPressed: () {
            // TODO: Mark as delivered
          },
          fullWidth: true,
          size: AppButtonSize.large,
          icon: const Icon(Icons.done_all),
        );

      default:
        return const SizedBox.shrink();
    }
  }

  void _currentLocation() {
    if (_currentPosition != null) {
      _mapController?.animateCamera(CameraUpdate.newLatLng(_currentPosition!));
    }
  }

  void _fitBounds() {
    if (_currentPosition != null && _mapController != null) {
      final bounds = LatLngBounds(
        southwest: LatLng(
          _currentPosition!.latitude < widget.order.patientLocation.latitude
              ? _currentPosition!.latitude
              : widget.order.patientLocation.latitude,
          _currentPosition!.longitude < widget.order.patientLocation.longitude
              ? _currentPosition!.longitude
              : widget.order.patientLocation.longitude,
        ),
        northeast: LatLng(
          _currentPosition!.latitude > widget.order.patientLocation.latitude
              ? _currentPosition!.latitude
              : widget.order.patientLocation.latitude,
          _currentPosition!.longitude > widget.order.patientLocation.longitude
              ? _currentPosition!.longitude
              : widget.order.patientLocation.longitude,
        ),
      );

      _mapController!.animateCamera(CameraUpdate.newLatLngBounds(bounds, 100));
    }
  }
}

class _StatusItem {
  final String label;
  final OrderStatus status;
  final IconData icon;

  _StatusItem(this.label, this.status, this.icon);
}
