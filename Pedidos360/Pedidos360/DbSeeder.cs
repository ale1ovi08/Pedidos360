using Microsoft.EntityFrameworkCore;
using Pedidos360.Models;

namespace Pedidos360.Data
{
    public static class DbSeeder
    {
        public static async Task SeedAsync(ApplicationDbContext context)
        {
            // Categorías
            if (!context.Categorias.Any())
            {
                var categorias = new List<Categoria>
                {
                    new Categoria { Nombre = "Tortas y Pasteles" },
                    new Categoria { Nombre = "Cupcakes y Muffins" },
                    new Categoria { Nombre = "Macarons y Petit Fours" },
                    new Categoria { Nombre = "Chocolates Artesanales" },
                    new Categoria { Nombre = "Cheesecakes" },
                };
                context.Categorias.AddRange(categorias);
                await context.SaveChangesAsync();
            }

            // Productos
            if (!context.Productos.Any())
            {
                var cat = await context.Categorias.ToListAsync();
                var productos = new List<Producto>
                {
                    new Producto { Nombre = "Torta Red Velvet", CategoriaId = cat[0].Id, Precio = 35000, ImpuestoPorc = 13, Stock = 10, Activo = true, ImagenUrl = "🎂" },
                    new Producto { Nombre = "Torta de Fresas con Crema", CategoriaId = cat[0].Id, Precio = 28000, ImpuestoPorc = 13, Stock = 8, Activo = true, ImagenUrl = "🍓" },
                    new Producto { Nombre = "Torta Naked Cake Floral", CategoriaId = cat[0].Id, Precio = 45000, ImpuestoPorc = 13, Stock = 5, Activo = true, ImagenUrl = "🌸" },
                    new Producto { Nombre = "Cupcakes de Vainilla x12", CategoriaId = cat[1].Id, Precio = 12000, ImpuestoPorc = 13, Stock = 20, Activo = true, ImagenUrl = "🧁" },
                    new Producto { Nombre = "Cupcakes de Chocolate x12", CategoriaId = cat[1].Id, Precio = 13000, ImpuestoPorc = 13, Stock = 15, Activo = true, ImagenUrl = "🧁" },
                    new Producto { Nombre = "Cupcakes Red Velvet x6", CategoriaId = cat[1].Id, Precio = 8500, ImpuestoPorc = 13, Stock = 18, Activo = true, ImagenUrl = "🧁" },
                    new Producto { Nombre = "Macarons Surtidos x8", CategoriaId = cat[2].Id, Precio = 9500, ImpuestoPorc = 13, Stock = 25, Activo = true, ImagenUrl = "🍬" },
                    new Producto { Nombre = "Macarons de Frambuesa x8", CategoriaId = cat[2].Id, Precio = 9800, ImpuestoPorc = 13, Stock = 20, Activo = true, ImagenUrl = "🍬" },
                    new Producto { Nombre = "Petit Fours Clásicos x10", CategoriaId = cat[2].Id, Precio = 11000, ImpuestoPorc = 13, Stock = 12, Activo = true, ImagenUrl = "🍰" },
                    new Producto { Nombre = "Trufas de Chocolate Belga x6", CategoriaId = cat[3].Id, Precio = 7500, ImpuestoPorc = 13, Stock = 30, Activo = true, ImagenUrl = "🍫" },
                    new Producto { Nombre = "Bombones Surtidos x12", CategoriaId = cat[3].Id, Precio = 14000, ImpuestoPorc = 13, Stock = 22, Activo = true, ImagenUrl = "🍫" },
                    new Producto { Nombre = "Cheesecake de Frutos Rojos", CategoriaId = cat[4].Id, Precio = 22000, ImpuestoPorc = 13, Stock = 7, Activo = true, ImagenUrl = "🍰" },
                    new Producto { Nombre = "Cheesecake de Maracuyá", CategoriaId = cat[4].Id, Precio = 21000, ImpuestoPorc = 13, Stock = 9, Activo = true, ImagenUrl = "🍰" },
                };
                context.Productos.AddRange(productos);
                await context.SaveChangesAsync();
            }

            // Clientes
            if (!context.Clientes.Any())
            {
                var clientes = new List<Cliente>
                {
                    new Cliente { Nombre = "Café Delicias CR", Cedula = "3-101-123456", Correo = "compras@cafedelicias.cr", Telefono = "2222-3333", Direccion = "San José, Barrio Escalante" },
                    new Cliente { Nombre = "Hotel Bougainvillea", Cedula = "3-101-654321", Correo = "eventos@bougainvillea.cr", Telefono = "2244-1414", Direccion = "Santo Domingo, Heredia" },
                    new Cliente { Nombre = "Restaurante La Palma", Cedula = "3-102-789012", Correo = "gerencia@lapalma.cr", Telefono = "2255-6677", Direccion = "Escazú, San José" },
                    new Cliente { Nombre = "Catering Momentos", Cedula = "3-103-345678", Correo = "pedidos@momentos.cr", Telefono = "8888-9999", Direccion = "Curridabat, San José" },
                    new Cliente { Nombre = "Tienda Dulce Vida", Cedula = "3-104-111222", Correo = "dulcevida@gmail.com", Telefono = "7777-5555", Direccion = "Alajuela Centro" },
                    new Cliente { Nombre = "Eventos Encanto", Cedula = "3-105-333444", Correo = "info@eventosencanto.cr", Telefono = "6666-4444", Direccion = "Cartago, Tres Ríos" },
                    new Cliente { Nombre = "Supermercado Familiar", Cedula = "3-106-555666", Correo = "compras@familiar.cr", Telefono = "2233-4455", Direccion = "Heredia Centro" },
                    new Cliente { Nombre = "Boutique Gourmet", Cedula = "3-107-777888", Correo = "pedidos@boutiquegourmet.cr", Telefono = "8855-3315", Direccion = "San Pedro, San José" },
                };
                context.Clientes.AddRange(clientes);
                await context.SaveChangesAsync();
            }
        }
    }
}