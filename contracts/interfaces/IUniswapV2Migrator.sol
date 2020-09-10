pragma solidity >=0.5.0;

interface IUniswapV2Migrator {
    function migrate(
        address token,
        uint256 amountTokenMin,
        uint256 amountTRXMin,
        address to,
        uint256 deadline
    ) external;
}
