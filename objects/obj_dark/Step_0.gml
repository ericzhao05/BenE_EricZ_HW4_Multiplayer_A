var target = 0;


if (instance_exists(trigger)) {
    if (trigger.triggered) {
        target = 1;
    }
}


if (instance_exists(trigger2)) {
    if (trigger2.triggered) {
        target = 1;
    }
}

light_amount = lerp(light_amount, target, 0.05);

if (abs(light_amount - target) < 0.01) {
    light_amount = target;
}