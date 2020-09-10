pragma solidity =0.6.6;

import '../interfaces/IUniswapV2Router01.sol';

contract RouterEventEmitter {
    event Amounts(uint256[] amounts);

    receive() external payable {}

    function swapExactTokensForTokens(
        address router,
        uint256 amountIn,
        uint256 amountOutMin,
        address[] calldata path,
        address to,
        uint256 deadline
    ) external {
        (bool success, bytes memory returnData) = router.delegatecall(
            abi.encodeWithSelector(
                IUniswapV2Router01(router).swapExactTokensForTokens.selector,
                amountIn,
                amountOutMin,
                path,
                to,
                deadline
            )
        );
        assert(success);
        emit Amounts(abi.decode(returnData, (uint256[])));
    }

    function swapTokensForExactTokens(
        address router,
        uint256 amountOut,
        uint256 amountInMax,
        address[] calldata path,
        address to,
        uint256 deadline
    ) external {
        (bool success, bytes memory returnData) = router.delegatecall(
            abi.encodeWithSelector(
                IUniswapV2Router01(router).swapTokensForExactTokens.selector,
                amountOut,
                amountInMax,
                path,
                to,
                deadline
            )
        );
        assert(success);
        emit Amounts(abi.decode(returnData, (uint256[])));
    }

    function swapExactTRXForTokens(
        address router,
        uint256 amountOutMin,
        address[] calldata path,
        address to,
        uint256 deadline
    ) external payable {
        (bool success, bytes memory returnData) = router.delegatecall(
            abi.encodeWithSelector(
                IUniswapV2Router01(router).swapExactTRXForTokens.selector,
                amountOutMin,
                path,
                to,
                deadline
            )
        );
        assert(success);
        emit Amounts(abi.decode(returnData, (uint256[])));
    }

    function swapTokensForExactTRX(
        address router,
        uint256 amountOut,
        uint256 amountInMax,
        address[] calldata path,
        address to,
        uint256 deadline
    ) external {
        (bool success, bytes memory returnData) = router.delegatecall(
            abi.encodeWithSelector(
                IUniswapV2Router01(router).swapTokensForExactTRX.selector,
                amountOut,
                amountInMax,
                path,
                to,
                deadline
            )
        );
        assert(success);
        emit Amounts(abi.decode(returnData, (uint256[])));
    }

    function swapExactTokensForTRX(
        address router,
        uint256 amountIn,
        uint256 amountOutMin,
        address[] calldata path,
        address to,
        uint256 deadline
    ) external {
        (bool success, bytes memory returnData) = router.delegatecall(
            abi.encodeWithSelector(
                IUniswapV2Router01(router).swapExactTokensForTRX.selector,
                amountIn,
                amountOutMin,
                path,
                to,
                deadline
            )
        );
        assert(success);
        emit Amounts(abi.decode(returnData, (uint256[])));
    }

    function swapTRXForExactTokens(
        address router,
        uint256 amountOut,
        address[] calldata path,
        address to,
        uint256 deadline
    ) external payable {
        (bool success, bytes memory returnData) = router.delegatecall(
            abi.encodeWithSelector(
                IUniswapV2Router01(router).swapTRXForExactTokens.selector,
                amountOut,
                path,
                to,
                deadline
            )
        );
        assert(success);
        emit Amounts(abi.decode(returnData, (uint256[])));
    }
}
