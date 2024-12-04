package com.nyandev.origami

import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableIntStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.navigation.NavController
import androidx.navigation.compose.NavHost
import androidx.navigation.compose.composable
import androidx.navigation.compose.rememberNavController
import com.nyandev.origami.features.paper.cards.ui.PaperCardsScreen
import com.nyandev.origami.features.splash.ui.SplashRouterInterface
import com.nyandev.origami.features.splash.ui.SplashScreen

@Composable
internal fun NavigationScreen(
    onFinish: () -> Unit,
) {
    val navController = rememberNavController()

    var state1 by remember { mutableIntStateOf(0) }
    var state0 by remember { mutableIntStateOf(0) }
    var state3 by remember { mutableIntStateOf(0) }

    val state2 by remember(
        state1,
        state0,
        state3,
    ) {
        mutableIntStateOf(state1 * state0 * state3)
    }

    LaunchedEffect(
        state1,
        state0,
    ) {
        onFinish()
    }


    // NavHost 설정
    NavHost(navController = navController, startDestination = "Splash") {
        composable("Splash") {
            SplashScreen(SplashRouter(navController))
        }
        composable("PaperCards") {
            PaperCardsScreen()
        }
    }
    Text(state1.toString())
}

/**
 * 스플래시 라우터
 */
class SplashRouter(private val navController: NavController) : SplashRouterInterface {
    override fun startPaperCards() {
        navController.navigate("PaperCards") {
            popUpTo("Splash") { inclusive = true }
        }
    }

    override fun startDetail() {
    }
}