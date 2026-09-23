# Project Railgun

I developed Project Railgun from November 2023 to December 2024. It consist of three physical prototypes and a LS-Dyna FEA study for my IB Physics HL Internal Assessment. I built it because I thought railguns are cool.

![RailgunImage](<media/Test Firing/Plasma Ionization/glorious_near_view_railgun_plasma.jpg>)

*My favourite railgun plasma-firing snapshot*

This is my journey building a functional electromagnetic railgun - from initial failed attempts in November 2023 to a working augmented railgun design by December 2024.

I started building this railgun because I saw a DIY railgun on YouTube and thought it looked very cool. But my initial motivation evolved significantly when I discovered how railguns are used in the Nuclear Fusion industry. First Light Fusion, a UK private fusion firm, uses railguns to achieve inertial confinement fusion for their Machine 3.

This repository contains:

- Photographs and videos of the physical prototypes.
- STEP files from the CAD work.
- LS-DYNA model files and retained simulation outputs.
- The complete Physics IA report, with results, references, and appendices.

![Shi Hao Ng beside the railgun test setup in the school workshop][workshop]

*Myself in PPE gear standing next to the physical prototype and test setup in my high school workshop.*

[Physics IA report](PHYSICS_IA_REPORT.pdf) · [Test video](https://youtu.be/YEjppfdcdkA) · [Project history](https://sienarindustries.com/project/railgun) · [CAD files](cad/step/) · [Simulation files](simulations/)

## Physical prototypes

| Version 1 | Version 2 | Version 3 |
| --- | --- | --- |
| ![First prototype with aluminium rails][prototype-one] | ![Second prototype on the test bench][prototype-two] | ![Top view of the third prototype][prototype-three] |
| Initial aluminium-rail prototype. | Second prototype and associated test equipment. | Third prototype with an augmented rail arrangement. |

### Version 1 — Initial attempt

I started with an aluminium-rail prototype and basic workshop tools. This attempt exposed gaps in my knowledge of electronics and fabrication.

The prototype did not operate as intended. These difficulties led me to investigate the physics through simulation.

### Version 2 — Electronics and workshop experience

I resumed the physical project in 2024. My work included a hand-wound transformer, rectifier experiments, soldered assemblies, and a second mechanical prototype.

This stage gave me more experience with electronic components and physical assembly. The repository includes photographs of unsuccessful attempts as part of the project record.

[Watch the Version 2 test](https://youtu.be/T1rmmG6Rxjg).

### Version 3 — CAD and the augmented prototype

For the third and final version, I used Blender and Fusion 360 to develop the acrylic sandwich, before exporting it to SVG using Adobe Illustrator to laser cut the relevant acrylic pieces. The final augmented railgun design relied on custom cut copper rods and the acrylic sandwich.

Mr Fauzi, the school workshop technician, helped with fabrication. The final photographs and videos document the assembled prototype and its tests.

## CAD and practical work

![Railgun model in Blender beside an exported drawing][cad-design]

*The acrylic sandwich enmeshing copper-rods model in Blender and an exported drawing with Adobe Illustrator.*

This image shows the viewport as I designed my augmented railgun after sketching out a blueprint on paper. It's modelled inside Blender, which is then exported using the SVG plugin. Which, one of the SVG files can be seen in the top right hand corner of this screenshot.

This SVG file was then subsequently used for laser cutting the acrylic sheets.

The [CAD folder](cad/step/) contains two STEP exports:

| File | Description |
| --- | --- |
| [`square-augmented.step`](cad/step/square-augmented.step) | Augmented design export. |
| [`square-augmented-split.step`](cad/step/square-augmented-split.step) | Split version of the design export. |

Further photographs are in the [media folder](media/).

## Physics investigation

The Physics IA investigated this question:

> How does the initial voltage of a capacitor bank affect the final kinetic energy of an electromagnetic mass-driver armature?

The study used an LS-DYNA example model. The physical augmented prototype was a separate part of the project.

| Item | Description |
| --- | --- |
| Coursework | IB Physics HL Internal Assessment |
| Simulation software | LS-DYNA |
| Quantity varied | Initial capacitor-bank voltage |
| Response quantity | Final armature kinetic energy |
| Reported study | 10 voltage conditions, with seven runs per condition |
| Total reported runs | 70 |
| Analysis | Curve fits, uncertainty analysis, and model evaluation |
| Main finding | A quadratic relationship within the simulation model |

The report gives an R² value of 0.9988 for the quadratic fit.

[Read the complete Physics IA report](PHYSICS_IA_REPORT.pdf).

### Simulation records

The [coursework folder](simulations/coursework/) contains model inputs and retained outputs, grouped by voltage condition. The report contains the results for all 70 runs. The repository retains 16 numbered trial folders and one additional short-shot folder.

The [development folder](simulations/development/) contains earlier model versions. These files document the simulation work before and around the final study. One historical model is incomplete: `simulations/development/working-version/i.k` references a `mesh.k` file that is absent from that folder.

## Videos

The videos document the physical tests. Each link opens on YouTube.

| Video | Description |
| --- | --- |
| [Slow-motion side view](https://youtu.be/YEjppfdcdkA) | Side view of a prototype test. |
| [Slow-motion close view](https://youtube.com/shorts/2sLU9-ZJ5Ls) | Close view of the test. |
| [Button activation — side view](https://youtu.be/m9poduVUevo) | Side view with button activation. |
| [Button activation — slow motion](https://youtu.be/wUNuyST-E6A) | Slow-motion view of the activation and test. |
| [Normal-speed side view](https://youtu.be/bTTDo01WfZg) | Test at normal playback speed. |
| [Charge and test sequence](https://youtu.be/6tt39c5J9Ao) | Record of the charge and test sequence. |
| [Version 2 test](https://youtu.be/T1rmmG6Rxjg) | Test of the earlier physical prototype. |

## Repository structure

```text
Project-Railgun/
├── README.md
├── PHYSICS_IA_REPORT.pdf
├── LICENSE
├── cad/
│   └── step/
│       ├── square-augmented.step
│       └── square-augmented-split.step
├── simulations/
│   ├── coursework/
│   │   └── [10 voltage-condition folders]
│   └── development/
│       ├── first-runnable/
│       ├── fp16-coordinate-variants/
│       ├── accurate-model/
│       ├── working-version/
│       └── solid-model/
└── media/
    ├── Stage 1/
    ├── Stage 2/
    ├── Stage 3/
    └── Test Firing/
```

| Location | Contents |
| --- | --- |
| [`PHYSICS_IA_REPORT.pdf`](PHYSICS_IA_REPORT.pdf) | Research question, method, results, evaluation, references, and appendices. |
| [`cad/step/`](cad/step/) | STEP geometry exports. |
| [`simulations/coursework/`](simulations/coursework/) | Coursework model inputs and retained outputs. |
| [`simulations/development/`](simulations/development/) | Intermediate simulation models and experiments. |
| [`media/`](media/) | Photographs and local video files, grouped by project stage. |

The simulation folders retain their internal filenames and historical version labels.

## Software and tools

| Tool | Use in the project |
| --- | --- |
| Blender | Mechanical geometry and design drawings. |
| Autodesk Fusion 360 | Geometry preparation and STEP conversion. |
| Adobe Illustrator | SVG file modification for laser-cutting fabrication. |
| LS-PrePost | Model preparation and result inspection. |
| LS-DYNA | Finite element simulation. |
| LS-Run | Simulation job execution. |
| Logger Pro | Graphs, curve fits, and data analysis. |

## Acknowledgements

I thank Mr Fauzi, the school workshop technician, for his fabrication support and practical guidance.

I also thank Yoga Dora Emon AP for his advice throughout the physical project.

The coursework study used the LS-DYNA railgun example model cited in the report. The report contains the full references for that model and the other research sources.

## Author

Shi Hao Ng

[Portfolio](https://sienarindustries.com) · [Full project history](https://sienarindustries.com/project/railgun) · [GitHub](https://github.com/Ice-Citron)

## Licence

See [LICENSE](LICENSE) for the Apache License 2.0.

[workshop]: media/Test%20Firing/Safety%20and%20PPE/safety_PPE_kit_next_to_railgun_system.jpg
[prototype-one]: media/Stage%201/Project%20Railgun%20-%20Version%201%20RG/barebone_aluminium_railgun.JPG
[prototype-two]: media/Stage%202/Porject%20Railgun%20-%20Version%202/railgun_system_v2_spring_mechanism.JPG
[prototype-three]: media/Stage%203/Assembled%20Railgun/Railgun_assembled_top_view.jpg
[cad-design]: media/Stage%203/Project%20Railgun%20-%20Modelling%3ADesigning%20inside%20Blender/blender_railgun_acrylic_sandwich_design.png
