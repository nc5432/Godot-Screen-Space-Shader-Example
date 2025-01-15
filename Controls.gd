extends VBoxContainer

@export var screenShader: ShaderMaterial

func _on_brightness_value_changed(value: float) -> void:
	screenShader.set_shader_parameter("brightness", value)

func _on_contrast_value_changed(value: float) -> void:
	screenShader.set_shader_parameter("contrast", value)

func _on_saturation_value_changed(value: float) -> void:
	screenShader.set_shader_parameter("saturation", value)

func _on_reset_pressed() -> void:
	screenShader.set_shader_parameter("brightness", 1)
	screenShader.set_shader_parameter("contrast", 1)
	screenShader.set_shader_parameter("saturation", 1)
	$Brightness/HSlider.value = 1
	$Contrast/HSlider.value = 1
	$Saturation/HSlider.value = 1
