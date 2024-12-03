package com.nyandev.origami

interface Platform {
    val name: String
}

expect fun getPlatform(): Platform