# Plotting porgram to plot data from fortran file_in_loadpath

filename = "data1.dat";
# empty separator means 'automatic'
separator = '';
skipped_rows = 1;
skipped_columns = 0;
m = dlmread(filename, separator, skipped_rows, skipped_columns);
t = m(:,1);
eta_ = m(:, 2);
plot(t, eta_, 'r*-')
grid()
xlabel('x', "fontsize", 20)
ylabel('y', "fontsize", 20)