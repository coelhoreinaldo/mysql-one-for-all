SELECT 
    ROUND(MIN(plan.valor_plano), 2) AS faturamento_minimo,
    ROUND(MAX(plan.valor_plano), 2) AS faturamento_maximo,
    ROUND(AVG(plan.valor_plano), 2) AS faturamento_medio,
    ROUND(SUM(plan.valor_plano), 2) AS faturamento_total
FROM SpotifyClone.plano AS plan
INNER JOIN SpotifyClone.pessoa_usuaria AS `user` ON plan.plano_id = `user`.plano_id;
