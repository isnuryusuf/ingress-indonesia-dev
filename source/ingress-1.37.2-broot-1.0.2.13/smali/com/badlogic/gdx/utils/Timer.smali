.class public Lcom/badlogic/gdx/utils/Timer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CANCELLED:I = -0x1

.field private static final FOREVER:I = -0x2

.field public static final instance:Lcom/badlogic/gdx/utils/Timer;


# instance fields
.field private posted:Z

.field private stopped:Z

.field private final tasks:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/utils/Timer$Task;",
            ">;"
        }
    .end annotation
.end field

.field private final timerRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/badlogic/gdx/utils/Timer;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Timer;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/utils/Timer;->instance:Lcom/badlogic/gdx/utils/Timer;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/Array;-><init>(ZI)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Timer;->tasks:Lcom/badlogic/gdx/utils/Array;

    .line 32
    new-instance v0, Lcom/badlogic/gdx/utils/Timer$1;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/Timer$1;-><init>(Lcom/badlogic/gdx/utils/Timer;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Timer;->timerRunnable:Ljava/lang/Runnable;

    .line 156
    return-void
.end method

.method public static post(Lcom/badlogic/gdx/utils/Timer$Task;)V
    .locals 1
    .parameter

    .prologue
    .line 126
    sget-object v0, Lcom/badlogic/gdx/utils/Timer;->instance:Lcom/badlogic/gdx/utils/Timer;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/utils/Timer;->postTask(Lcom/badlogic/gdx/utils/Timer$Task;)V

    .line 127
    return-void
.end method

.method private postRunnable()V
    .locals 2

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/Timer;->stopped:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/Timer;->posted:Z

    if-eqz v0, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/Timer;->posted:Z

    .line 89
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/Timer;->timerRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static schedule(Lcom/badlogic/gdx/utils/Timer$Task;)V
    .locals 1
    .parameter

    .prologue
    .line 132
    sget-object v0, Lcom/badlogic/gdx/utils/Timer;->instance:Lcom/badlogic/gdx/utils/Timer;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/utils/Timer;->scheduleTask(Lcom/badlogic/gdx/utils/Timer$Task;)V

    .line 133
    return-void
.end method

.method public static schedule(Lcom/badlogic/gdx/utils/Timer$Task;F)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 138
    sget-object v0, Lcom/badlogic/gdx/utils/Timer;->instance:Lcom/badlogic/gdx/utils/Timer;

    invoke-virtual {v0, p0, p1}, Lcom/badlogic/gdx/utils/Timer;->scheduleTask(Lcom/badlogic/gdx/utils/Timer$Task;F)V

    .line 139
    return-void
.end method

.method public static schedule(Lcom/badlogic/gdx/utils/Timer$Task;FF)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 144
    sget-object v0, Lcom/badlogic/gdx/utils/Timer;->instance:Lcom/badlogic/gdx/utils/Timer;

    invoke-virtual {v0, p0, p1, p2}, Lcom/badlogic/gdx/utils/Timer;->scheduleTask(Lcom/badlogic/gdx/utils/Timer$Task;FF)V

    .line 145
    return-void
.end method

.method public static schedule(Lcom/badlogic/gdx/utils/Timer$Task;FFI)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 150
    sget-object v0, Lcom/badlogic/gdx/utils/Timer;->instance:Lcom/badlogic/gdx/utils/Timer;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/Timer;->scheduleTask(Lcom/badlogic/gdx/utils/Timer$Task;FFI)V

    .line 151
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    .line 81
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/badlogic/gdx/utils/Timer;->tasks:Lcom/badlogic/gdx/utils/Array;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 82
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Timer;->tasks:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Timer$Task;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Timer$Task;->cancel()V

    .line 81
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Timer;->tasks:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 84
    return-void
.end method

.method public postTask(Lcom/badlogic/gdx/utils/Timer$Task;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 40
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v1, v1, v0}, Lcom/badlogic/gdx/utils/Timer;->scheduleTask(Lcom/badlogic/gdx/utils/Timer$Task;FFI)V

    .line 41
    return-void
.end method

.method public scheduleTask(Lcom/badlogic/gdx/utils/Timer$Task;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 45
    const/4 v0, -0x2

    invoke-virtual {p0, p1, v1, v1, v0}, Lcom/badlogic/gdx/utils/Timer;->scheduleTask(Lcom/badlogic/gdx/utils/Timer$Task;FFI)V

    .line 46
    return-void
.end method

.method public scheduleTask(Lcom/badlogic/gdx/utils/Timer$Task;F)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 50
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/badlogic/gdx/utils/Timer;->scheduleTask(Lcom/badlogic/gdx/utils/Timer$Task;FFI)V

    .line 51
    return-void
.end method

.method public scheduleTask(Lcom/badlogic/gdx/utils/Timer$Task;FF)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    const/4 v0, -0x2

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/badlogic/gdx/utils/Timer;->scheduleTask(Lcom/badlogic/gdx/utils/Timer$Task;FFI)V

    .line 56
    return-void
.end method

.method public scheduleTask(Lcom/badlogic/gdx/utils/Timer$Task;FFI)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    iget v0, p1, Lcom/badlogic/gdx/utils/Timer$Task;->repeatCount:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The same task may not be scheduled twice."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    iput p2, p1, Lcom/badlogic/gdx/utils/Timer$Task;->delaySeconds:F

    .line 62
    iput p3, p1, Lcom/badlogic/gdx/utils/Timer$Task;->intervalSeconds:F

    .line 63
    iput p4, p1, Lcom/badlogic/gdx/utils/Timer$Task;->repeatCount:I

    .line 64
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Timer;->tasks:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 65
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/Timer;->postRunnable()V

    .line 66
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/Timer;->stopped:Z

    .line 76
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/Timer;->postRunnable()V

    .line 77
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/Timer;->stopped:Z

    .line 71
    return-void
.end method

.method update()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v7, -0x1

    .line 93
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/Timer;->stopped:Z

    if-eqz v0, :cond_0

    .line 94
    iput-boolean v3, p0, Lcom/badlogic/gdx/utils/Timer;->posted:Z

    .line 121
    :goto_0
    return-void

    .line 98
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getDeltaTime()F

    move-result v4

    .line 99
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Timer;->tasks:Lcom/badlogic/gdx/utils/Array;

    iget v1, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    move v2, v3

    :goto_1
    if-ge v2, v1, :cond_5

    .line 100
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Timer;->tasks:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Timer$Task;

    .line 101
    iget v5, v0, Lcom/badlogic/gdx/utils/Timer$Task;->delaySeconds:F

    sub-float/2addr v5, v4

    iput v5, v0, Lcom/badlogic/gdx/utils/Timer$Task;->delaySeconds:F

    .line 102
    iget v5, v0, Lcom/badlogic/gdx/utils/Timer$Task;->delaySeconds:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_4

    .line 103
    iget v5, v0, Lcom/badlogic/gdx/utils/Timer$Task;->repeatCount:I

    if-eq v5, v7, :cond_2

    .line 104
    iget v5, v0, Lcom/badlogic/gdx/utils/Timer$Task;->repeatCount:I

    if-nez v5, :cond_1

    iput v7, v0, Lcom/badlogic/gdx/utils/Timer$Task;->repeatCount:I

    .line 105
    :cond_1
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Timer$Task;->run()V

    .line 107
    :cond_2
    iget v5, v0, Lcom/badlogic/gdx/utils/Timer$Task;->repeatCount:I

    if-ne v5, v7, :cond_3

    .line 108
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Timer;->tasks:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    .line 109
    add-int/lit8 v2, v2, -0x1

    .line 110
    add-int/lit8 v0, v1, -0x1

    move v1, v2

    .line 99
    :goto_2
    add-int/lit8 v2, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 112
    :cond_3
    iget v5, v0, Lcom/badlogic/gdx/utils/Timer$Task;->intervalSeconds:F

    iput v5, v0, Lcom/badlogic/gdx/utils/Timer$Task;->delaySeconds:F

    .line 113
    iget v5, v0, Lcom/badlogic/gdx/utils/Timer$Task;->repeatCount:I

    if-lez v5, :cond_4

    iget v5, v0, Lcom/badlogic/gdx/utils/Timer$Task;->repeatCount:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v0, Lcom/badlogic/gdx/utils/Timer$Task;->repeatCount:I

    :cond_4
    move v0, v1

    move v1, v2

    goto :goto_2

    .line 117
    :cond_5
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Timer;->tasks:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v0, :cond_6

    .line 118
    iput-boolean v3, p0, Lcom/badlogic/gdx/utils/Timer;->posted:Z

    goto :goto_0

    .line 120
    :cond_6
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/Timer;->timerRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
