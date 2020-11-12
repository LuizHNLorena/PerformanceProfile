include(pwd()*"\\src\\BenchmarkProfiles.jl")    # Inclui os arquivos do projeto
using .BenchmarkProfiles                        # Inclui o módulo

using CSV, Plots
gr() # Backend de plot gr()

# Carrega resultados de fo e tempo 
df = CSV.read(pwd()*"\\data\\resultadosCPLEXvsCS.csv")

for i in 1:size(df,1)
    valorMenor = min(df[i,1],df[i,2])
    umPorCentoMenor = 0.01 * valorMenor
    # Compara o do CPLEX
    difCPLEX = abs(df[i,1] - valorMenor)
    if difCPLEX > umPorCentoMenor
        df[i,3] = Inf
    end
    # Compara o do CS
    difCS = abs(df[i,2] - valorMenor)
    if difCS > umPorCentoMenor
        df[i,4] = Inf
    end
end

# Isola colunas de tempo e transforma de dataframe para array
tempos = convert(Matrix,df[:,3:4])

# Cria o gráfico
performance_profile(tempos, ["CPLEX", "CS"], linestyles=[:auto, :auto])

# Descomentar para salvar
#savefig(pwd()*"\\pprofile.pdf")