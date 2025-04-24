package com.example.duegiuaky221121514122.ui.Day1_LinearLayout;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import com.example.duegiuaky221121514122.databinding.FragmentDay1LinearlayoutBinding;

public class Day1LinearLayoutFragment extends Fragment {


    private FragmentDay1LinearlayoutBinding binding;
    private String currentInput = "";
    private String lastOperator = null;
    private Double previousValue = null;


    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        binding = FragmentDay1LinearlayoutBinding.inflate(inflater, container, false);
        View root = binding.getRoot();


        setupCalculator();
        return root;
    }


    private void setupCalculator() {
        View[] buttons = {
                binding.btn0, binding.btn1, binding.btn2, binding.btn3, binding.btn4,
                binding.btn5, binding.btn6, binding.btn7, binding.btn8, binding.btn9
        };


        for (View button : buttons) {
            button.setOnClickListener(v -> appendNumber(button.getTag().toString()));
        }


        binding.btnC.setOnClickListener(v -> clear());
        binding.btnBang.setOnClickListener(v -> calculateResult());
        binding.btnAdd.setOnClickListener(v -> setOperator("+"));
        binding.btnTru.setOnClickListener(v -> setOperator("-"));
        binding.btnNhan.setOnClickListener(v -> setOperator("*"));
        binding.btnDivide.setOnClickListener(v -> setOperator("/"));
        binding.btnPtram.setOnClickListener(v -> percentage());
        binding.btnCham.setOnClickListener(v -> appendDecimal());
    }


    private void appendNumber(String number) {
        currentInput += number;
        binding.display.setText(currentInput);
    }


    private void appendDecimal() {
        if (!currentInput.contains(".")) {
            currentInput += ".";
            binding.display.setText(currentInput);
        }
    }


    private void setOperator(String operator) {
        if (!currentInput.isEmpty()) {
            previousValue = Double.parseDouble(currentInput);
            lastOperator = operator;
            currentInput = "";
        }
    }


    private void calculateResult() {
        if (previousValue != null && lastOperator != null && !currentInput.isEmpty()) {
            double secondValue = Double.parseDouble(currentInput);
            double result;
            switch (lastOperator) {
                case "+":
                    result = previousValue + secondValue;
                    break;
                case "-":
                    result = previousValue - secondValue;
                    break;
                case "*":
                    result = previousValue * secondValue;
                    break;
                case "/":
                    result = (secondValue != 0.0) ? previousValue / secondValue : Double.NaN;
                    break;
                default:
                    result = Double.NaN;
            }
            binding.display.setText(String.valueOf(result));
            previousValue = null;
            lastOperator = null;
            currentInput = "";
        }
    }


    private void percentage() {
        if (!currentInput.isEmpty()) {
            double value = Double.parseDouble(currentInput) / 100;
            binding.display.setText(String.valueOf(value));
            currentInput = String.valueOf(value);
        }
    }


    private void clear() {
        currentInput = "";
        previousValue = null;
        lastOperator = null;
        binding.display.setText("0");
    }


    @Override
    public void onDestroyView() {
        super.onDestroyView();
        binding = null;
    }
}
