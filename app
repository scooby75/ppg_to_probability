import streamlit as st

def ppg_to_probability(ppg, max_points_per_game):
    probability = ppg / max_points_per_game
    return probability

def probability_to_odds(probability):
    odds = 1 / probability
    return odds

def main():
    st.title("Conversor de PPG para Probabilidade e Odds")

    # Inputs do usuário
    ppg = st.number_input("PPG (Pontos por Jogo)", value=2.44, step=0.01)
    max_points_per_game = st.number_input("Pontos Máximos por Jogo", value=3, step=1)

    # Calcula a probabilidade
    probability = ppg_to_probability(ppg, max_points_per_game)

    # Converte a probabilidade em odds
    odds = probability_to_odds(probability)

    # Exibe os resultados
    st.write(f"**PPG Home:** {ppg}")
    st.write(f"**Probabilidade Home:** {probability:.4f}")
    st.write(f"**Odds Home:** {odds:.2f}")

if __name__ == "__main__":
    main()
