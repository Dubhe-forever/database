//解决高考分数排名数据
//解决院校历史录取数据
//产生随机id和高考分数

#include<stdio.h>
#include<stdlib.h>
#include<time.h>
#define NUM 200 //number of students
#define MIN 50  //min grade 
#define MAX 720 //max grade

void GaoKaoFenShuPaiMing(int *grade);

int main() {
    srand((unsigned)time(NULL));
    int g[NUM] = { 0 };
    GaoKaoFenShuPaiMing(g);
    return 0;
}

void GaoKaoFenShuPaiMing(int *grade) {  //随机产生高考分数以及排名，一张总表
    for (int i = 0;i < NUM;i++) 
        grade[i] = MIN + rand() % (MAX-MIN+1);
    for(int i=0;i<NUM;i++)
        for (int j = i + 1;j < NUM;j++) {
            if (grade[i] < grade[j]) {
                int temp = grade[i];
                grade[i] = grade[j];
                grade[j] = temp;
            }
        }
    for (int i = 0;i < NUM;i++)
        printf("(%d,%d),", grade[i], i + 1);    //数据可以直接用于建表
}