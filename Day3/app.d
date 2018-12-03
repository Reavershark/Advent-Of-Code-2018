import std.stdio;
import std.file;
import std.string;
import std.conv;
import std.algorithm;

void main()
{
    auto data = readText("file.txt").split('\n');
    int[] rects[];
    int[] coords[];
    foreach (line; data) {
        rects ~= to!(int[])(line.split(' '));
    }

    foreach (rect; rects) {
        for (int i = 0; i < rect[3]; i++) {
            for (int j = 0; j < rect[4]; j++) {
                coords ~= [rect[1] + i, rect[2] + j];
            }
        }
    }

    foreach (coord; coords) {
        writeln(coord[0], " ", coord[1]);
    }

    //coords.length -= coords.sort().uniq().copy(coords).length;
}
