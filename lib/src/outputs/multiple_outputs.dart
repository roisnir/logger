import 'package:logger/src/logger.dart';
import 'package:logger/src/log_output.dart';

class MultipleOutputs extends LogOutput {
  final List<LogOutput> outputs;

  MultipleOutputs(this.outputs);

  @override
  void init() {
    outputs.forEach((logOutput) => logOutput.init());
  }

  @override
  void output(OutputEvent event) {
    outputs.forEach((logOutput) => logOutput.output(event));
  }

  @override
  void destroy() {
    outputs.forEach((logOutput) => logOutput.destroy());
  }
}