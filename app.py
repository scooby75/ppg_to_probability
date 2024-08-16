import streamlit as st

def ppg_to_probability(ppg, max_points_per_game=3):
    probability = ppg / max_points_per_game
    return probability

def probability_to_odds(probability):
    odds = 1 / probability
    return odds

def main():
    st.title("Odd Justa")

    # Input do usuário para PPG
    ppg = st.number_input("PPG (Pontos por Jogo)", value=2.55, step=0.01)

    if ppg > 0:
        # Calcula a probabilidade
        probability = ppg_to_probability(ppg)

        # Converte a probabilidade em odds
        odds = probability_to_odds(probability)

        # Exibe os resultados
        
        st.write(f"**Odds Home:** {odds:.2f}")
        #st.write(f"**PPG Home:** {ppg}")        
        #st.write(f"**Probabilidade Home:** {probability:.4f}")
        

if __name__ == "__main__":
    main()
