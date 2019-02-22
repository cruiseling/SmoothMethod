require(ggplot2)
require(reshape2)
require(scales)

N <- 50
alpha <- beta <- seq(from = 0, to = 1, len = N)
data1 <- expand.grid(alpha = alpha, beta = beta)

# Data1, it contains 8 (N x N) matrices.

data <- readRDS(file = "D:/GitHub/SmoothMethod/Data/data1.RDS")
# aa = 1,2,...,8
aa <- 8
qq <- data[1:N^2+N^2*(aa-1)]
data1$data <- qq

p1 <- ggplot(data1, aes(alpha, beta)) + 
  geom_tile(aes(fill = data)) + 
  scale_y_continuous(expand = c(0, 0)) + 
  scale_x_continuous(expand = c(0, 0))  + 
  theme(panel.grid = element_blank(), axis.ticks = element_blank(), 
        strip.background = element_blank()) + 
  ylab(expression(beta)) + 
  xlab(expression(alpha)) + 
  ggtitle(paste0("Data 1-",aa))

p1

# Data2, it contains 2 (N x N) matrices

data <- readRDS(file = "D:/GitHub/SmoothMethod/Data/data2.RDS")
# aa = 1,2,...,8
aa <- 2
qq <- data[1:N^2+N^2*(aa-1)]
data1$data <- qq

p1 <- ggplot(data1, aes(alpha, beta)) + 
  geom_tile(aes(fill = data)) + 
  scale_y_continuous(expand = c(0, 0)) + 
  scale_x_continuous(expand = c(0, 0))  + 
  theme(panel.grid = element_blank(), axis.ticks = element_blank(), 
        strip.background = element_blank()) + 
  ylab(expression(beta)) + 
  xlab(expression(alpha)) + 
  ggtitle(paste0("Data 2-",aa))

p1
