.class public final Lcom/badlogic/gdx/backends/android/AndroidInput;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/badlogic/gdx/Input;


# instance fields
.field final R:[F

.field public accelerometerAvailable:Z

.field private accelerometerListener:Landroid/hardware/SensorEventListener;

.field private final accelerometerValues:[F

.field final app:Lcom/badlogic/gdx/backends/android/AndroidApplication;

.field private azimuth:F

.field private catchBack:Z

.field private catchMenu:Z

.field private compassAvailable:Z

.field private compassListener:Landroid/hardware/SensorEventListener;

.field private final config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

.field private currentEventTimeStamp:J

.field deltaX:[I

.field deltaY:[I

.field private handle:Landroid/os/Handler;

.field final hasMultitouch:Z

.field private inclination:F

.field private justTouched:Z

.field keyEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/badlogic/gdx/backends/android/AndroidInput$KeyEvent;",
            ">;"
        }
    .end annotation
.end field

.field keyboardAvailable:Z

.field private keys:Lcom/badlogic/gdx/utils/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/IntMap",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final magneticFieldValues:[F

.field private manager:Landroid/hardware/SensorManager;

.field private final nativeOrientation:Lcom/badlogic/gdx/Input$Orientation;

.field private final onscreenKeyboard:Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard;

.field final orientation:[F

.field private pitch:F

.field private processor:Lcom/badlogic/gdx/InputProcessor;

.field realId:[I

.field requestFocus:Z

.field private roll:F

.field private sleepTime:I

.field private text:Ljava/lang/String;

.field private textListener:Lcom/badlogic/gdx/Input$TextInputListener;

.field touchEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final touchHandler:Lcom/badlogic/gdx/backends/android/AndroidTouchHandler;

.field touchX:[I

.field touchY:[I

.field touched:[Z

.field usedKeyEvents:Lcom/badlogic/gdx/utils/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Pool",
            "<",
            "Lcom/badlogic/gdx/backends/android/AndroidInput$KeyEvent;",
            ">;"
        }
    .end annotation
.end field

.field usedTouchEvents:Lcom/badlogic/gdx/utils/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Pool",
            "<",
            "Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final vibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/backends/android/AndroidApplication;Landroid/view/View;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0x14

    const/4 v0, 0x0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v1, Lcom/badlogic/gdx/backends/android/AndroidInput$1;

    const/16 v2, 0x10

    const/16 v3, 0x3e8

    invoke-direct {v1, p0, v2, v3}, Lcom/badlogic/gdx/backends/android/AndroidInput$1;-><init>(Lcom/badlogic/gdx/backends/android/AndroidInput;II)V

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->usedKeyEvents:Lcom/badlogic/gdx/utils/Pool;

    .line 81
    new-instance v1, Lcom/badlogic/gdx/backends/android/AndroidInput$2;

    const/16 v2, 0x10

    const/16 v3, 0x3e8

    invoke-direct {v1, p0, v2, v3}, Lcom/badlogic/gdx/backends/android/AndroidInput$2;-><init>(Lcom/badlogic/gdx/backends/android/AndroidInput;II)V

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->usedTouchEvents:Lcom/badlogic/gdx/utils/Pool;

    .line 87
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->keyEvents:Ljava/util/ArrayList;

    .line 88
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->touchEvents:Ljava/util/ArrayList;

    .line 89
    new-array v1, v4, [I

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->touchX:[I

    .line 90
    new-array v1, v4, [I

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->touchY:[I

    .line 91
    new-array v1, v4, [I

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->deltaX:[I

    .line 92
    new-array v1, v4, [I

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->deltaY:[I

    .line 93
    new-array v1, v4, [Z

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->touched:[Z

    .line 94
    const/16 v1, 0xa

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->realId:[I

    .line 96
    new-instance v1, Lcom/badlogic/gdx/utils/IntMap;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/IntMap;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->keys:Lcom/badlogic/gdx/utils/IntMap;

    .line 98
    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->accelerometerAvailable:Z

    .line 99
    new-array v1, v7, [F

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->accelerometerValues:[F

    .line 100
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->text:Ljava/lang/String;

    .line 101
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->textListener:Lcom/badlogic/gdx/Input$TextInputListener;

    .line 105
    iput v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->sleepTime:I

    .line 106
    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->catchBack:Z

    .line 107
    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->catchMenu:Z

    .line 109
    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->compassAvailable:Z

    .line 111
    new-array v1, v7, [F

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->magneticFieldValues:[F

    .line 112
    iput v5, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->azimuth:F

    .line 113
    iput v5, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->pitch:F

    .line 114
    iput v5, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->roll:F

    .line 115
    iput v5, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->inclination:F

    .line 116
    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->justTouched:Z

    .line 120
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->currentEventTimeStamp:J

    .line 380
    iput-boolean v6, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->requestFocus:Z

    .line 515
    const/16 v1, 0x9

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->R:[F

    .line 516
    new-array v1, v7, [F

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->orientation:[F

    .line 127
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 128
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 129
    invoke-virtual {p2, v6}, Landroid/view/View;->setFocusable(Z)V

    .line 130
    invoke-virtual {p2, v6}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 131
    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    .line 132
    invoke-virtual {p2}, Landroid/view/View;->requestFocusFromTouch()Z

    .line 133
    iput-object p3, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    .line 134
    new-instance v1, Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p1, v2, p0}, Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/badlogic/gdx/backends/android/AndroidInput;)V

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->onscreenKeyboard:Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard;

    .line 136
    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->realId:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 137
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->realId:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    .line 136
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 138
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->handle:Landroid/os/Handler;

    .line 139
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->app:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    .line 140
    iget v0, p3, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->touchSleepTime:I

    iput v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->sleepTime:I

    .line 141
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 142
    const/4 v1, 0x5

    if-lt v0, v1, :cond_5

    .line 143
    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidMultiTouchHandler;

    invoke-direct {v0}, Lcom/badlogic/gdx/backends/android/AndroidMultiTouchHandler;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->touchHandler:Lcom/badlogic/gdx/backends/android/AndroidTouchHandler;

    .line 146
    :goto_1
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->touchHandler:Lcom/badlogic/gdx/backends/android/AndroidTouchHandler;

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->app:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/backends/android/AndroidTouchHandler;->supportsMultitouch(Lcom/badlogic/gdx/backends/android/AndroidApplication;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->hasMultitouch:Z

    .line 148
    const-string/jumbo v0, "vibrator"

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->vibrator:Landroid/os/Vibrator;

    .line 150
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidInput;->getRotation()I

    move-result v0

    .line 151
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->app:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    iget-object v1, v1, Lcom/badlogic/gdx/backends/android/AndroidApplication;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    invoke-virtual {v1}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->getDesktopDisplayMode()Lcom/badlogic/gdx/Graphics$DisplayMode;

    move-result-object v1

    .line 152
    if-eqz v0, :cond_1

    const/16 v2, 0xb4

    if-ne v0, v2, :cond_2

    :cond_1
    iget v2, v1, Lcom/badlogic/gdx/Graphics$DisplayMode;->width:I

    iget v3, v1, Lcom/badlogic/gdx/Graphics$DisplayMode;->height:I

    if-ge v2, v3, :cond_4

    :cond_2
    const/16 v2, 0x5a

    if-eq v0, v2, :cond_3

    const/16 v2, 0x10e

    if-ne v0, v2, :cond_6

    :cond_3
    iget v0, v1, Lcom/badlogic/gdx/Graphics$DisplayMode;->width:I

    iget v1, v1, Lcom/badlogic/gdx/Graphics$DisplayMode;->height:I

    if-gt v0, v1, :cond_6

    .line 154
    :cond_4
    sget-object v0, Lcom/badlogic/gdx/Input$Orientation;->Landscape:Lcom/badlogic/gdx/Input$Orientation;

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->nativeOrientation:Lcom/badlogic/gdx/Input$Orientation;

    .line 158
    :goto_2
    return-void

    .line 145
    :cond_5
    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidSingleTouchHandler;

    invoke-direct {v0}, Lcom/badlogic/gdx/backends/android/AndroidSingleTouchHandler;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->touchHandler:Lcom/badlogic/gdx/backends/android/AndroidTouchHandler;

    goto :goto_1

    .line 156
    :cond_6
    sget-object v0, Lcom/badlogic/gdx/Input$Orientation;->Portrait:Lcom/badlogic/gdx/Input$Orientation;

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->nativeOrientation:Lcom/badlogic/gdx/Input$Orientation;

    goto :goto_2
.end method

.method private updateOrientation()V
    .locals 4

    .prologue
    .line 519
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->R:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->accelerometerValues:[F

    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->magneticFieldValues:[F

    invoke-static {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->R:[F

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->orientation:[F

    invoke-static {v0, v1}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    .line 521
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->orientation:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->azimuth:F

    .line 522
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->orientation:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->pitch:F

    .line 523
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->orientation:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->roll:F

    .line 525
    :cond_0
    return-void
.end method


# virtual methods
.method public final cancelVibrate()V
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->vibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 500
    return-void
.end method

.method public final getAccelerometerX()F
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->accelerometerValues:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public final getAccelerometerY()F
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->accelerometerValues:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public final getAccelerometerZ()F
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->accelerometerValues:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public final getAzimuth()F
    .locals 1

    .prologue
    .line 538
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->compassAvailable:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 541
    :goto_0
    return v0

    .line 540
    :cond_0
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/AndroidInput;->updateOrientation()V

    .line 541
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->azimuth:F

    goto :goto_0
.end method

.method public final getCurrentEventTime()J
    .locals 2

    .prologue
    .line 705
    iget-wide v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->currentEventTimeStamp:J

    return-wide v0
.end method

.method public final getDeltaX()I
    .locals 2

    .prologue
    .line 681
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->deltaX:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public final getDeltaX(I)I
    .locals 1
    .parameter

    .prologue
    .line 686
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->deltaX:[I

    aget v0, v0, p1

    return v0
.end method

.method public final getDeltaY()I
    .locals 2

    .prologue
    .line 691
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->deltaY:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public final getDeltaY(I)I
    .locals 1
    .parameter

    .prologue
    .line 696
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->deltaY:[I

    aget v0, v0, p1

    return v0
.end method

.method public final getFreePointerIndex()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 623
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->realId:[I

    array-length v2, v0

    move v0, v1

    .line 624
    :goto_0
    if-ge v0, v2, :cond_1

    .line 625
    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->realId:[I

    aget v3, v3, v0

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 631
    :goto_1
    return v0

    .line 624
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 628
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->realId:[I

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    .line 629
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->realId:[I

    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->realId:[I

    array-length v3, v3

    invoke-static {v2, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 630
    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->realId:[I

    .line 631
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public final getInputProcessor()Lcom/badlogic/gdx/InputProcessor;
    .locals 1

    .prologue
    .line 608
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->processor:Lcom/badlogic/gdx/InputProcessor;

    return-object v0
.end method

.method public final getNativeOrientation()Lcom/badlogic/gdx/Input$Orientation;
    .locals 1

    .prologue
    .line 667
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->nativeOrientation:Lcom/badlogic/gdx/Input$Orientation;

    return-object v0
.end method

.method public final getPitch()F
    .locals 1

    .prologue
    .line 546
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->compassAvailable:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 549
    :goto_0
    return v0

    .line 548
    :cond_0
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/AndroidInput;->updateOrientation()V

    .line 549
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->pitch:F

    goto :goto_0
.end method

.method public final getPlaceholderTextInput(Lcom/badlogic/gdx/Input$TextInputListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 222
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->handle:Landroid/os/Handler;

    new-instance v1, Lcom/badlogic/gdx/backends/android/AndroidInput$4;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/badlogic/gdx/backends/android/AndroidInput$4;-><init>(Lcom/badlogic/gdx/backends/android/AndroidInput;Ljava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/Input$TextInputListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 254
    return-void
.end method

.method public final getRoll()F
    .locals 1

    .prologue
    .line 554
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->compassAvailable:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 557
    :goto_0
    return v0

    .line 556
    :cond_0
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/AndroidInput;->updateOrientation()V

    .line 557
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->roll:F

    goto :goto_0
.end method

.method public final getRotation()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 650
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->app:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    invoke-virtual {v1}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getOrientation()I

    move-result v1

    .line 651
    packed-switch v1, :pswitch_data_0

    .line 661
    :goto_0
    :pswitch_0
    return v0

    .line 655
    :pswitch_1
    const/16 v0, 0x5a

    goto :goto_0

    .line 657
    :pswitch_2
    const/16 v0, 0xb4

    goto :goto_0

    .line 659
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_0

    .line 651
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final getRotationMatrix([F)V
    .locals 3
    .parameter

    .prologue
    .line 533
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->accelerometerValues:[F

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->magneticFieldValues:[F

    invoke-static {p1, v0, v1, v2}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    .line 534
    return-void
.end method

.method public final getTextInput(Lcom/badlogic/gdx/Input$TextInputListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 177
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->handle:Landroid/os/Handler;

    new-instance v1, Lcom/badlogic/gdx/backends/android/AndroidInput$3;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/badlogic/gdx/backends/android/AndroidInput$3;-><init>(Lcom/badlogic/gdx/backends/android/AndroidInput;Ljava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/Input$TextInputListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 219
    return-void
.end method

.method public final getX()I
    .locals 2

    .prologue
    .line 258
    monitor-enter p0

    .line 259
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->touchX:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 260
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getX(I)I
    .locals 1
    .parameter

    .prologue
    .line 272
    monitor-enter p0

    .line 273
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->touchX:[I

    aget v0, v0, p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 274
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getY()I
    .locals 2

    .prologue
    .line 265
    monitor-enter p0

    .line 266
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->touchY:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 267
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getY(I)I
    .locals 1
    .parameter

    .prologue
    .line 279
    monitor-enter p0

    .line 280
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->touchY:[I

    aget v0, v0, p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 281
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final isButtonPressed(I)Z
    .locals 1
    .parameter

    .prologue
    .line 509
    if-nez p1, :cond_0

    .line 510
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidInput;->isTouched()Z

    move-result v0

    .line 512
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isCursorCatched()Z
    .locals 1

    .prologue
    .line 676
    const/4 v0, 0x0

    return v0
.end method

.method public final isKeyPressed(I)Z
    .locals 1
    .parameter

    .prologue
    .line 292
    monitor-enter p0

    .line 293
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 294
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->keys:Lcom/badlogic/gdx/utils/IntMap;

    iget v0, v0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    .line 296
    :goto_1
    return v0

    .line 294
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 296
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->keys:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/IntMap;->containsKey(I)Z

    move-result v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 297
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final isPeripheralAvailable(Lcom/badlogic/gdx/Input$Peripheral;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 613
    sget-object v2, Lcom/badlogic/gdx/Input$Peripheral;->Accelerometer:Lcom/badlogic/gdx/Input$Peripheral;

    if-ne p1, v2, :cond_1

    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->accelerometerAvailable:Z

    .line 619
    :cond_0
    :goto_0
    return v0

    .line 614
    :cond_1
    sget-object v2, Lcom/badlogic/gdx/Input$Peripheral;->Compass:Lcom/badlogic/gdx/Input$Peripheral;

    if-ne p1, v2, :cond_2

    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->compassAvailable:Z

    goto :goto_0

    .line 615
    :cond_2
    sget-object v2, Lcom/badlogic/gdx/Input$Peripheral;->HardwareKeyboard:Lcom/badlogic/gdx/Input$Peripheral;

    if-ne p1, v2, :cond_3

    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->keyboardAvailable:Z

    goto :goto_0

    .line 616
    :cond_3
    sget-object v2, Lcom/badlogic/gdx/Input$Peripheral;->OnscreenKeyboard:Lcom/badlogic/gdx/Input$Peripheral;

    if-eq p1, v2, :cond_0

    .line 617
    sget-object v2, Lcom/badlogic/gdx/Input$Peripheral;->Vibrator:Lcom/badlogic/gdx/Input$Peripheral;

    if-ne p1, v2, :cond_4

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->vibrator:Landroid/os/Vibrator;

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 618
    :cond_4
    sget-object v0, Lcom/badlogic/gdx/Input$Peripheral;->MultitouchScreen:Lcom/badlogic/gdx/Input$Peripheral;

    if-ne p1, v0, :cond_5

    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->hasMultitouch:Z

    goto :goto_0

    :cond_5
    move v0, v1

    .line 619
    goto :goto_0
.end method

.method public final isTouched()Z
    .locals 2

    .prologue
    .line 302
    monitor-enter p0

    .line 303
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->touched:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 304
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final isTouched(I)Z
    .locals 1
    .parameter

    .prologue
    .line 285
    monitor-enter p0

    .line 286
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->touched:[Z

    aget-boolean v0, v0, p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 287
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final justTouched()Z
    .locals 1

    .prologue
    .line 504
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->justTouched:Z

    return v0
.end method

.method public final lookUpPointerIndex(I)I
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 635
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->realId:[I

    array-length v2, v0

    move v0, v1

    .line 636
    :goto_0
    if-ge v0, v2, :cond_1

    .line 637
    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->realId:[I

    aget v3, v3, v0

    if-ne v3, p1, :cond_0

    .line 645
    :goto_1
    return v0

    .line 636
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 640
    :cond_1
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    move v0, v1

    .line 641
    :goto_2
    if-ge v0, v2, :cond_2

    .line 642
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->realId:[I

    aget v4, v4, v0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 641
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 644
    :cond_2
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string/jumbo v1, "AndroidInput"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Pointer ID lookup failed: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0xff

    .line 404
    monitor-enter p0

    .line 405
    :try_start_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v0

    int-to-char v0, v0

    .line 407
    const/16 v4, 0x43

    if-ne p2, v4, :cond_6

    const/16 v0, 0x8

    move v4, v0

    .line 410
    :goto_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 449
    :goto_1
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->app:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->getGraphics()Lcom/badlogic/gdx/Graphics;

    move-result-object v0

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->requestRendering()V

    .line 450
    monitor-exit p0

    .line 453
    if-ne p2, v3, :cond_3

    move v0, v1

    .line 456
    :goto_2
    return v0

    .line 412
    :pswitch_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->usedKeyEvents:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/backends/android/AndroidInput$KeyEvent;

    .line 413
    const/4 v4, 0x0

    iput-char v4, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$KeyEvent;->keyChar:C

    .line 414
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    iput v4, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$KeyEvent;->keyCode:I

    .line 415
    const/4 v4, 0x0

    iput v4, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$KeyEvent;->type:I

    .line 418
    if-ne p2, v6, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 420
    const/16 v4, 0xff

    iput v4, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$KeyEvent;->keyCode:I

    move p2, v3

    .line 423
    :cond_0
    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->keyEvents:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 424
    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->keys:Lcom/badlogic/gdx/utils/IntMap;

    iget v0, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$KeyEvent;->keyCode:I

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 450
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 427
    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->usedKeyEvents:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/backends/android/AndroidInput$KeyEvent;

    .line 428
    const/4 v5, 0x0

    iput-char v5, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$KeyEvent;->keyChar:C

    .line 429
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    iput v5, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$KeyEvent;->keyCode:I

    .line 430
    const/4 v5, 0x1

    iput v5, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$KeyEvent;->type:I

    .line 432
    if-ne p2, v6, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 434
    const/16 v5, 0xff

    iput v5, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$KeyEvent;->keyCode:I

    move p2, v3

    .line 436
    :cond_1
    iget-object v5, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->keyEvents:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 438
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->usedKeyEvents:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/backends/android/AndroidInput$KeyEvent;

    .line 439
    iput-char v4, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$KeyEvent;->keyChar:C

    .line 440
    const/4 v4, 0x0

    iput v4, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$KeyEvent;->keyCode:I

    .line 441
    const/4 v4, 0x2

    iput v4, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$KeyEvent;->type:I

    .line 442
    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->keyEvents:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 444
    if-ne p2, v3, :cond_2

    .line 445
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->keys:Lcom/badlogic/gdx/utils/IntMap;

    const/16 v4, 0xff

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/IntMap;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 447
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->keys:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/IntMap;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 454
    :cond_3
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->catchBack:Z

    if-eqz v0, :cond_4

    if-ne p2, v6, :cond_4

    move v0, v1

    goto/16 :goto_2

    .line 455
    :cond_4
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->catchMenu:Z

    if-eqz v0, :cond_5

    const/16 v0, 0x52

    if-ne p2, v0, :cond_5

    move v0, v1

    goto/16 :goto_2

    :cond_5
    move v0, v2

    .line 456
    goto/16 :goto_2

    :cond_6
    move v4, v0

    goto/16 :goto_0

    .line 410
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 384
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->requestFocus:Z

    if-eqz v0, :cond_0

    .line 385
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 386
    invoke-virtual {p1}, Landroid/view/View;->requestFocusFromTouch()Z

    .line 387
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->requestFocus:Z

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->touchHandler:Lcom/badlogic/gdx/backends/android/AndroidTouchHandler;

    invoke-interface {v0, p2, p0}, Lcom/badlogic/gdx/backends/android/AndroidTouchHandler;->onTouch(Landroid/view/MotionEvent;Lcom/badlogic/gdx/backends/android/AndroidInput;)V

    .line 393
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->sleepTime:I

    if-eqz v0, :cond_1

    .line 395
    :try_start_0
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->sleepTime:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method final processEvents()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 314
    monitor-enter p0

    .line 315
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->justTouched:Z

    .line 317
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->processor:Lcom/badlogic/gdx/InputProcessor;

    if-eqz v0, :cond_1

    .line 318
    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->processor:Lcom/badlogic/gdx/InputProcessor;

    .line 320
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->keyEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v1

    .line 321
    :goto_0
    if-ge v2, v4, :cond_0

    .line 322
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->keyEvents:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/backends/android/AndroidInput$KeyEvent;

    .line 323
    iget-wide v5, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$KeyEvent;->timeStamp:J

    iput-wide v5, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->currentEventTimeStamp:J

    .line 324
    iget v5, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$KeyEvent;->type:I

    packed-switch v5, :pswitch_data_0

    .line 334
    :goto_1
    iget-object v5, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->usedKeyEvents:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v5, v0}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    .line 321
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 326
    :pswitch_0
    iget v5, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$KeyEvent;->keyCode:I

    invoke-interface {v3, v5}, Lcom/badlogic/gdx/InputProcessor;->keyDown(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 377
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 329
    :pswitch_1
    :try_start_1
    iget v5, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$KeyEvent;->keyCode:I

    invoke-interface {v3, v5}, Lcom/badlogic/gdx/InputProcessor;->keyUp(I)Z

    goto :goto_1

    .line 332
    :pswitch_2
    iget-char v5, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$KeyEvent;->keyChar:C

    invoke-interface {v3, v5}, Lcom/badlogic/gdx/InputProcessor;->keyTyped(C)Z

    goto :goto_1

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->touchEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v1

    .line 338
    :goto_2
    if-ge v2, v4, :cond_4

    .line 339
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->touchEvents:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;

    .line 340
    iget-wide v5, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;->timeStamp:J

    iput-wide v5, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->currentEventTimeStamp:J

    .line 341
    iget v5, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;->type:I

    packed-switch v5, :pswitch_data_1

    .line 352
    :goto_3
    iget-object v5, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->usedTouchEvents:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v5, v0}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    .line 338
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 343
    :pswitch_3
    iget v5, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;->x:I

    iget v6, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;->y:I

    iget v7, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;->pointer:I

    const/4 v8, 0x0

    invoke-interface {v3, v5, v6, v7, v8}, Lcom/badlogic/gdx/InputProcessor;->touchDown(IIII)Z

    .line 344
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->justTouched:Z

    goto :goto_3

    .line 347
    :pswitch_4
    iget v5, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;->x:I

    iget v6, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;->y:I

    iget v7, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;->pointer:I

    const/4 v8, 0x0

    invoke-interface {v3, v5, v6, v7, v8}, Lcom/badlogic/gdx/InputProcessor;->touchUp(IIII)Z

    goto :goto_3

    .line 350
    :pswitch_5
    iget v5, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;->x:I

    iget v6, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;->y:I

    iget v7, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;->pointer:I

    invoke-interface {v3, v5, v6, v7}, Lcom/badlogic/gdx/InputProcessor;->touchDragged(III)Z

    goto :goto_3

    .line 355
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->touchEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    .line 356
    :goto_4
    if-ge v2, v3, :cond_3

    .line 357
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->touchEvents:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;

    .line 358
    iget v4, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;->type:I

    if-nez v4, :cond_2

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->justTouched:Z

    .line 359
    :cond_2
    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->usedTouchEvents:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v4, v0}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    .line 356
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    .line 362
    :cond_3
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->keyEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v0, v1

    .line 363
    :goto_5
    if-ge v0, v2, :cond_4

    .line 364
    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->usedKeyEvents:Lcom/badlogic/gdx/utils/Pool;

    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->keyEvents:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    .line 363
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 368
    :cond_4
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->touchEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    .line 369
    :goto_6
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->deltaX:[I

    array-length v1, v1

    if-ge v0, v1, :cond_5

    .line 370
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->deltaX:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    .line 371
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->deltaY:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    .line 369
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 375
    :cond_5
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->keyEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 376
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->touchEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 377
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 324
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 341
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method final registerSensorListeners()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 561
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget-boolean v0, v0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->useAccelerometer:Z

    if-eqz v0, :cond_2

    .line 562
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->app:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->manager:Landroid/hardware/SensorManager;

    .line 563
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->manager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v6}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 564
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->manager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v6}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    .line 567
    new-instance v1, Lcom/badlogic/gdx/backends/android/AndroidInput$SensorListener;

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->nativeOrientation:Lcom/badlogic/gdx/Input$Orientation;

    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->accelerometerValues:[F

    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->magneticFieldValues:[F

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/badlogic/gdx/backends/android/AndroidInput$SensorListener;-><init>(Lcom/badlogic/gdx/backends/android/AndroidInput;Lcom/badlogic/gdx/Input$Orientation;[F[F)V

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->accelerometerListener:Landroid/hardware/SensorEventListener;

    .line 568
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->manager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->accelerometerListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v2, v0, v6}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->accelerometerAvailable:Z

    .line 574
    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget-boolean v0, v0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->useCompass:Z

    if-eqz v0, :cond_4

    .line 575
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->manager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->app:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->manager:Landroid/hardware/SensorManager;

    .line 576
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->manager:Landroid/hardware/SensorManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 577
    if-eqz v0, :cond_3

    .line 578
    iget-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->accelerometerAvailable:Z

    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->compassAvailable:Z

    .line 579
    iget-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->compassAvailable:Z

    if-eqz v1, :cond_1

    .line 580
    new-instance v1, Lcom/badlogic/gdx/backends/android/AndroidInput$SensorListener;

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->nativeOrientation:Lcom/badlogic/gdx/Input$Orientation;

    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->accelerometerValues:[F

    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->magneticFieldValues:[F

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/badlogic/gdx/backends/android/AndroidInput$SensorListener;-><init>(Lcom/badlogic/gdx/backends/android/AndroidInput;Lcom/badlogic/gdx/Input$Orientation;[F[F)V

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->compassListener:Landroid/hardware/SensorEventListener;

    .line 581
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->manager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->compassListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v2, v0, v6}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->compassAvailable:Z

    .line 588
    :cond_1
    :goto_1
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string/jumbo v1, "AndroidInput"

    const-string/jumbo v2, "sensor listener setup"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    return-void

    .line 572
    :cond_2
    iput-boolean v5, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->accelerometerAvailable:Z

    goto :goto_0

    .line 584
    :cond_3
    iput-boolean v5, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->compassAvailable:Z

    goto :goto_1

    .line 587
    :cond_4
    iput-boolean v5, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->compassAvailable:Z

    goto :goto_1
.end method

.method public final setCatchBackKey(Z)V
    .locals 0
    .parameter

    .prologue
    .line 479
    iput-boolean p1, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->catchBack:Z

    .line 480
    return-void
.end method

.method public final setCatchMenuKey(Z)V
    .locals 0
    .parameter

    .prologue
    .line 484
    iput-boolean p1, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->catchMenu:Z

    .line 485
    return-void
.end method

.method public final setCursorCatched(Z)V
    .locals 0
    .parameter

    .prologue
    .line 672
    return-void
.end method

.method public final setCursorPosition(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 701
    return-void
.end method

.method public final setInputProcessor(Lcom/badlogic/gdx/InputProcessor;)V
    .locals 1
    .parameter

    .prologue
    .line 308
    monitor-enter p0

    .line 309
    :try_start_0
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->processor:Lcom/badlogic/gdx/InputProcessor;

    .line 310
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final setOnscreenKeyboardVisible(Z)V
    .locals 2
    .parameter

    .prologue
    .line 462
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->handle:Landroid/os/Handler;

    new-instance v1, Lcom/badlogic/gdx/backends/android/AndroidInput$5;

    invoke-direct {v1, p0, p1}, Lcom/badlogic/gdx/backends/android/AndroidInput$5;-><init>(Lcom/badlogic/gdx/backends/android/AndroidInput;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 475
    return-void
.end method

.method final unregisterSensorListeners()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 592
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->manager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_2

    .line 593
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->accelerometerListener:Landroid/hardware/SensorEventListener;

    if-eqz v0, :cond_0

    .line 594
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->manager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->accelerometerListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 595
    iput-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->accelerometerListener:Landroid/hardware/SensorEventListener;

    .line 597
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->compassListener:Landroid/hardware/SensorEventListener;

    if-eqz v0, :cond_1

    .line 598
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->manager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->compassListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 599
    iput-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->compassListener:Landroid/hardware/SensorEventListener;

    .line 601
    :cond_1
    iput-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->manager:Landroid/hardware/SensorManager;

    .line 603
    :cond_2
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string/jumbo v1, "AndroidInput"

    const-string/jumbo v2, "sensor listener tear down"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    return-void
.end method

.method public final vibrate(I)V
    .locals 4
    .parameter

    .prologue
    .line 489
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->vibrator:Landroid/os/Vibrator;

    int-to-long v1, p1

    invoke-static {}, La;->n()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 490
    :cond_0
    return-void
.end method

.method public final vibrate([JI)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 494
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->vibrator:Landroid/os/Vibrator;

    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 495
    return-void
.end method
