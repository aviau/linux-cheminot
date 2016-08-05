# linux-cheminot

Ben oui, c'est pas facile l'ÉTS.

Fait juste ``make run`` pis tu va pouvoir choisir/annuler tes cours.

Derien.

Si tu veux même pas cloner le repo et builder toi même l'image, fait ca:
 - ``xhost +local:docker && docker run -ti --rm -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix reazem/linux-cheminot``

## Dependencies

- make
- docker

## Trivia

L'école est supérieure, pas la technologie.
