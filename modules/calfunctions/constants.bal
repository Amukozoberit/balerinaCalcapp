

public type Algorithm ALGO_FACT|ALGO_SORT;
public const ERROR_INVALID_REQUEST="INVALID_REQUEST";
public const ALGO_FACT="FACT";
public const ALGO_SORT="SORT";
public type Request record{
    Algorithm algorithm;
    int[] data;
};
