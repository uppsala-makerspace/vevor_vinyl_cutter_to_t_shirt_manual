---
tags:
  - troubleshooting
  - problems
---

# Troubleshooting

## The vinyl cutter is wrinkling the paper

![The vinyl cutter is wrinkling the paper](wheel_not_on_roller.jpg)

> The vinyl cutter is wrinkling the paper.

This happens when at least one wheel of the three movable heads is
not on a roller at the bottom:

![The right wheel is not on the roller](wheel_not_on_roller_annotated.png)

> The right wheel (right rectangle) is not on the roller
> (partially shown and indicated by the left rectangle)

## The vinyl cutter is confused

![The vinyl cutter is confused](vevor_is_confused.jpg)

This may happen when you send multiple prints at the same time.
Press reset, close Inkcut, press reset, start Inkcut and try again

## The cut does not follow the image

<!-- markdownlint-disable MD013 --><!-- Tables cannot be split up over lines, hence will break 80 characters per line -->

Example|Correct                              |Incorrect
-------|-------------------------------------|-----------------------------------------
Circle |![Correct circle](correct_circle.png)|![Incorrect circle](incorrect_circle.png)
Lines  |![Correct lines](correct_lines.png)  |![Incorrect lines](incorrect_lines.png)

<!-- markdownlint-enable MD013 -->

This happens when you have three roller wheels connected to the vinyl,
instead of just two.

Disconnect the middle weel from the vinyl.

## The cut does not cut

<!-- markdownlint-disable MD013 --><!-- Tables cannot be split up over lines, hence will break 80 characters per line -->

Example|Correct                              |Incorrect
-------|-------------------------------------|-----------------------------------------
Circle |![Correct circle](correct_circle.png)|![Correct circle with a weak cut](correct_circle_weak_cut.png)
Lines  |![Correct lines](correct_lines.png)  |![Correct lines with a weak cut](correct_lines_weak_cut.png)

<!-- markdownlint-enable MD013 -->

This happens when the force of the knife is too low..
In [step 6: setup the vinyl cutter](../steps/6_setup_vinyl_cutter.md),
increase the force.
