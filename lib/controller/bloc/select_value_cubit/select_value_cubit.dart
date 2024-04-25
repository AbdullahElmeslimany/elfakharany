import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'select_value_state.dart';

class SelectValueCubit extends Cubit<SelectValueState> {
  SelectValueCubit() : super(SelectValueInitial());
  List<String> buttonList = ["L", "M", "S"];
  List adda = [];

  String? currentvalue = "L";
  selectValue(String value) {
    currentvalue = value;
    print(currentvalue);
    emit(ChangeValueState(value: currentvalue));
  }

  selectExtination(String value) {
    adda.add(value);
    print(adda);
    emit(ChangeValueState(value: currentvalue));
  }
}
