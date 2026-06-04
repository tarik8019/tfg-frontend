import 'package:flutter/material.dart';
import 'package:mijornada/data/services/api/model/login_response/login_response.dart';
import 'package:mijornada/ui/home/view_models/home_viewmodel.dart';
import '../../../domain/models/user/dominio/user.dart';
import '../../core/themes/colors.dart';


/// Tarjeta de información del usuario (nombre, rol, foto y botón de logout).
class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
    required this.user,
    required this.onLogout, required HomeViewModel viewModel,
  });

  final User? user;
  final VoidCallback onLogout;

  @override
  Widget build(BuildContext context) {
    final String userName =
        (user != null) ? '${user!.nombre} ${user!.apellidos}' : 'Usuario';
    final String userRole = user?.rol ?? 'Desconocido';
    final String? imageUrl = user?.pictureUrl;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            gradient: LinearGradient(
              colors: [
                AppColors.primaryLight.withOpacity(0.3),
                Colors.white,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              // Imagen del usuario o icono genérico
              CircleAvatar(
                radius: 32,
                backgroundColor: AppColors.primaryLight,
                backgroundImage:
                    (imageUrl != null && imageUrl.isNotEmpty) ? NetworkImage(imageUrl) : null,
                child: (imageUrl == null || imageUrl.isEmpty)
                    ? Icon(
                        Icons.person,
                        color: AppColors.primaryDark,
                        size: 36,
                      )
                    : null,
              ),

              const SizedBox(width: 16),

              // Nombre completo y rol
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      userName,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      userRole,
                      style: TextStyle(
                        fontSize: 14,
                        color: AppColors.textSecondary,
                      ),
                    ),
                  ],
                ),
              ),

              // Botón de logout
              IconButton(
                icon: const Icon(Icons.logout),
                color: AppColors.primaryDark,
                onPressed: onLogout,
                tooltip: 'Cerrar sesión',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
