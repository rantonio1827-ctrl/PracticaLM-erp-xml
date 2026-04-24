<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>
    <!--  ======================================
          PLANTILLA PRINCIPAL (raíz del XML)
          ======================================  -->
    <xsl:template match="/">
        <html>
            <head>
                <title>MakingStyle - Catálogo</title>
                <style> body { font-family: Arial, sans-serif; margin: 30px; } h1 { color: #4a4a8a; } h2 { color: #666; margin-top: 30px; } table { border-collapse: collapse; width: 60%; } th { background-color: #4a4a8a; color: white; padding: 8px; } td { border: 1px solid #ccc; padding: 8px; } tr:nth-child(even) { background-color: #f2f2f2; } </style>
            </head>
            <body>
                <!--  Nombre de la empresa  -->
                <h1>
                Empresa:
                <xsl:value-of select="empresa/nombre"/>
                </h1>
                <!--  TABLA DE PRODUCTOS  -->
                <h2>Productos</h2>
                <table>
                    <tr>
                        <th>Código</th>
                        <th>Nombre</th>
                        <th>Precio (EUR)</th>
                        <th>Stock</th>
                    </tr>
                    <!--  Recorremos cada producto con for-each  -->
                    <xsl:for-each select="empresa/productos/producto">
                        <tr>
                            <td>
                                <xsl:value-of select="@codigo"/>
                            </td>
                            <td>
                                <xsl:value-of select="nombre"/>
                            </td>
                            <td>
                                <xsl:value-of select="precio"/>
                            </td>
                            <td>
                                <xsl:value-of select="stock"/>
                            </td>
                        </tr>
                    </xsl:for-each>
                    </table>
                    <!--  TABLA DE CLIENTES  -->
                    <h2>Clientes</h2>
                    <table>
                        <tr>
                            <th>Código</th>
                            <th>Nombre</th>
                            <th>Teléfono</th>
                        </tr>
                        <xsl:for-each select="empresa/clientes/cliente">
                            <tr>
                                <td>
                                    <xsl:value-of select="@codigo"/>
                                </td>
                                <td>
                                    <xsl:value-of select="nombre"/>
                                </td>
                                <td>
                                    <xsl:value-of select="telefono"/>
                                </td>
                            </tr>
                        </xsl:for-each>
                    </table>
                    <!--  TABLA DE ÓRDENES  -->
                    <h2>Órdenes</h2>
                    <table>
                        <tr>
                        <th>Código Orden</th>
                        <th>Producto</th>
                        <th>Cliente</th>
                        <th>Fecha</th>
                    </tr>
                    <xsl:for-each select="empresa/ordenes/orden">
                        <tr>
                            <td>
                                <xsl:value-of select="@codigo"/>
                            </td>
                            <td>
                                <xsl:value-of select="producto"/>
                            </td>
                            <td>
                                <xsl:value-of select="cliente"/>
                            </td>
                            <td>
                                <xsl:value-of select="fecha"/>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>