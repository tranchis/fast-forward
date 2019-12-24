# fast-forward
Dockerfile for creating an image for running the FF (Fast Forward) planner from https://fai.cs.uni-saarland.de/hoffmann/ff.html

## Usage

Usage information:

```bash
$ docker run tranchis/fast-forward
```

Running pddl files from your local computer:

```bash
$ docker run -v `pwd`:/pddl tranchis/fast-forward -o domain.pddl -f problem.pddl
```
