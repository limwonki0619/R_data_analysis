#--------------------------------------------------------------#
#               코딩에서 가장 중요한 것 두 가지                #
#                                                              #
#                        1. Indentation                        #
#                                                              # 
#                        2. Comment                            #
#--------------------------------------------------------------#


#--------------------------------------------------------------#
#---------- section 6 : R Matrix, arrray, list 다루기 ---------#
#--------------------------------------------------------------#

# 6.2.1 Matirx : 2차원 배열 -----------------------------------------------------------------------------

mat1 <- matrix(c(1,2,3,4)); mat1                     # Matrix는 기본적으로 열을 기준으로 생성, 
                                                     # Matrix는 반드시 모든 데이터의 형태가 동일해야 한다. 

mat2 <- matrix(c(1,2,3,4), nrow=2); mat2             # nrow는 행의 갯수를 의미, 다만 데이터는 열을 기준으로 먼저 생성된다.
mat3 <- matrix(c(1,2,3,4), nrow=2, byrow = T); mat3  # byrow 옵션을 통해 데이터를 행을 기준으로 생성할 수 있다.

# 6.2.2 Matrix의 데이터 조회하기 ------------------------------------------------------------------------

mat3[1,2]                                            # Matrix의 1행, 2열에 해당하는 값을 출력한다.
mat3[1,]                                             # Matrix의 1행에 해당하는 값을 출력한다.
mat3[,2]                                             # Matrix의 2열에 해당하는 값을 출력한다.

# 6.2.3 Matrix의 새로운 행과 열 추가하기 ----------------------------------------------------------------

mat4 <- matrix(seq(1:9),nrow=3,byrow=T); mat4
mat4 <- rbind(mat4,10:12); mat4                      # rbind : 행 추가  
mat4 <- cbind(mat4,13:16); mat4                      # cbind : 열 추가  

mat5 <- matrix(c('a','b','c','d'), nrow=2, byrow=T); mat5
mat5 <- cbind(mat5,c('e','f')); mat5

colnames(mat5) <- c('First','Second','Third'); mat5 # colnames <- 열 이름 지정 
rownames(mat5) <- c('name','age'); mat5             # rownames <- 행 이름 지정 


# matrix 연습문제 329p -----------------------------------------------------------------------------------

seasons <- matrix(c('봄','여름','가을','겨울'), nrow=2); seasons
seasons <- matrix(c('봄','여름','가을','겨울'), nrow=2, byrow=T); seasons

seasons[,2]

seasons_2 <- rbind(seasons, c('초봄','초가을')); seasons_2
seasons_3 <- cbind(seasons_2, c('초여름','초겨울','한겨울')); seasons_3



friend <- matrix(c('논산','대구','대전',27,28,30), nrow=2, byrow=T); friend
friend <- cbind(friend,c('대구',27)); friend
friend <- rbind(friend,c('아파트','아파트','주택','아파트')); friend

colnames(friend) <- c('김영진','임원기','김준호','장현준'); friend
rownames(friend) <- c('출신지','나이','거주지'); friend


# 6.3 Array : 메트릭스의 n차원 데이터 형태 --------------------------------------------------------------
# array(data = NA, dim=length(data), dimnames=NULL)

# data : vector 자료
# dim : 각 차원을 정의하는 vector
# dimnames(옵션) : 각 차원의 이름을 갖는 vector


                                                                   # Array도 데이터의 형태가 같아야 한다. 
array1 <- array(c(1:12), dim=c(4,3)); array1                       # 4행 3열의 배열 만들기 dim : 행, 렬, 차원
                                                                   # 배열에서 byrow는 사용을 못한다.

array2 <- array(c(1:12),dim=c(2,2,3)); array2                      # 2행 2열 3차원의 배열 형태 
array2[1,2,3]                                                      # 3차원의 1행 2열 값을 출력 
array2[1,,]                                                        # 모든 차원, 모든 열의 1행 값을 출력 


# 6.4 list 다양한 형태의 데이터 -------------------------------------------------------------------------

# list는 다양한 데이터 형태(vector, character, numeric 등)를 가질 수 있다.. = Any data type

list1 <- list(names = "홍길동",                       # 여기서 names, tell, age 등을 Key값이라 한다.
              address = '전국',                       # Key 값을 통해 Value를 추출할 수 있다.
              tell = '010-2345-4567',               
              age = 300); list1                            

list1$names                                           # 특정 Key 값만 출력하기 
list1[1:2]               
list1[[4]]                                            # 특정 Key 값내의 Value 값만 출력하기

list1$birth <- '1719-10-23'; list1                    # 새로운 Key 값 추가하기 
list1$names <- c('Seojinsu','James Seo'); list1
list1$birth <- NULL; list1                            # Key값 삭제하기



rm(list=ls())
























