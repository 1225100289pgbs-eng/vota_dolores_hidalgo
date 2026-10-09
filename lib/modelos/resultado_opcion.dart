import 'opcion_votacion.dart';

class ResultadoOpcion {
  final OpcionVotacion opcion;
  final double porcentaje;
  ResultadoOpcion(this.opcion, this.porcentaje);
}
List<ResultadoOpcion> obtenerResultados(dynamic votacion) {
  final total = votacion.opciones.fold<int>(0, (suma, o) => suma + o.votos);
  return votacion.opciones.map((o) {
    final porcentaje = total == 0 ? 0.0 : (o.votos / total) * 100;
    return ResultadoOpcion(o, porcentaje);
  }).toList();
}