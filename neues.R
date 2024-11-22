bundesliga <- c("FC Bayern" = 55L, 
                "BVB" = 51L, 
                "RB Leipzig" = 50L, 
                "Borussia MGB" = 49L,  
                "Bayer 04" = 47L,  
                "FC Schalke 04" = 37L, 
                "VfL Wolfsburg" =36L, 
                "SC Freiburg" = 36L,  
                "TSG Hoffenheim" = 35L, 
                "1. FC Köln" = 32L,  
                "Union Berlin" = 30L,  
                "Eintracht Frankfurt" = 28L,  
                "Hertha Berlin" = 28L,  
                "FC Augsburg" = 27L,  
                "Mainz 05" = 26L,  
                "Fortuna Duesseldorf" = 22L,  
                "Werder Bremen" = 18L,
                "SC Paderborn" = 16L)
#a
bundesliga_mat <- matrix(bundesliga)
bundesliga_mat

#b
typeof(bundesliga_mat)
#Integer
class(bundesliga_mat)
#matrix array

#c
first3 <- as.vector(head(bundesliga_mat, 3))
last3 <- as.vector(tail(bundesliga_mat, 3))
first3
last3
#alternativ
first3 <- bundesliga_mat[1:3,]
last3 <- bundesliga_mat[16:18,]
last3
first3
last3 <- bundesliga_mat[(nrow(bundesliga_mat) -2):nrow(bundesliga_mat),]
#d
typeof(first3)
#integer
class(first3)
#integer

#e
first3 <- head(bundesliga_mat, n = 3L)
laast3 <- tail(bundesliga_mat, n = 3L)
first3

class(first3)
#matrix array

#f
bundesliga_mat2 <- bundesliga_mat
rownames(bundesliga_mat2) <- c("FC Bayern", "BVB", "RB Leipzig", "Borussia MGB",
                               "Bayer 04", " FC Schalke 04", "VfL Wolfsburg", "VfL Wolfsburg",
                               "TSGHoffenheim", "1.FCKöln", "1.FCKöln", "1.FCKöln", 
                               "HerthaBerlin", "FCAugsburg", "Mainz05", "FortunaDuesseldorf",
                               "WerderBremen", "SCPaderborn")
bundesliga_mat2

#g
typeof(bundesliga_mat)
typeof(bundesliga_mat2)
#Datan typen sind gleich

class(bundesliga_mat)
class(bundesliga_mat2)
#Class ist gleich

dim(bundesliga_mat)
dim(bundesliga_mat2)
#dimensionen sind ebenfalls gleich

#h
bundesliga_mat3 <- bundesliga_mat2
bundesliga_mat3 <- cbind(bundesliga_mat3, c(1:18))

#i
typeof(bundesliga_mat3)
#Integer
class(bundesliga_mat3)
#Matrix array
dim(bundesliga_mat3)
#18 2

#j
bundesliga_mat3 <- cbind(bundesliga_mat3, c("BAY","NRW","SXN","NRW","NRW","NRW","NSX","BWB","BWB","NRW","BER","HES",
                                            "BER","BAY","RLP","NRW","BRE","NRW"))
bundesliga_mat3
#k
typeof(bundesliga_mat3)
#chatacter
class(bundesliga_mat3)
#matrix array
dim(bundesliga_mat3)
#18 3
#Da man eine neue Spalte eingefügt hat, die char enthät, änert
#sich der Typ der Matrix. Es ist nicht erwünscht, da 2 Spalten der
#Matrix Int sind und unnötig zum char umgewandelt werden

#l
colnames(bundesliga_mat3) <- c("points", "rank", "state")
bundesliga_mat3

#m
bundesliga_df <- as.data.frame(bundesliga_mat3)
bundesliga_df

#n
typeof(bundesliga_df)
#list
class(bundesliga_df)
#data.frame
dim(bundesliga_df)
#18 3

#o
apply(bundesliga_df, 2, typeof)
#p
bundesliga_df$points_int <- as.integer(c(55,51,50,49,47,37,36,36,35,32,30,28, 28,27,26,22,18,16))
bundesliga_df
bundesliga_df$rank_int <- as.integer(c(1:18))
bundesliga_df
bundesliga_df$points <- NULL
bundesliga_df$rank <- NULL
bundesliga_df
str(bundesliga_df)

#q
apply(bundesliga_df,2, typeof)

#2

names <- c("Alex", "Lilly", "Mark", "Oliver", "Martha", "Lucas", "Caroline")
age <- c(25, 31, 23, 52, 76, 49, 26)
height <- c(177, 163, 190, 179, 163, 183, 164)
weight <- c(57,69,83,75,70,83,53)
gender <- c("D", "F", "M", "M", "F", "M", "F")

df <- data.frame(names, age, height, weight, gender)
df
str(df)
#a
class(df[["gender"]])
#caracter
gender_factor <- as.factor(df[["gender"]],levels = c(D, F, M), lables = c("divers","female","male"))
factor(df[["gender"]],levels =  c("D", "F", "M"), labels = c("divers","female","male"))
df

#b
working <- c("Yes", "No", "No", "Yes", "Yes", "No", "Yes")
df2 <- data.frame(working)
df2

#c
df3 <- cbind(df, df2)
df3
df3$working == "Yes"

#d
as.logical(factor(df3[["working"]], levels = c("Yes", "No"), labels = c("TRUE", "FALSE")))

#e
dim(df3)
#7 rows 6 colums

#f
sapply(df3, typeof)
sapply(df3, class)

#g
bmi <- c(df3[["weight"]] / ((df3[["height"]]/100)^2))
bmi
df3 <- cbind(df3, bmi)
df3

#h
males_df <- df3[df3$gender == "M",]
males_df

#i
males_df[males_df$bmi >= 23,]

#j
males_df[males_df$names, males_df$bmi]
#?
#Unexpected change
n <- 1
z<-123
n = z
n
