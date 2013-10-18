.class final Lcom/google/analytics/tracking/android/ab;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/analytics/tracking/android/t;


# direct methods
.method private constructor <init>(Lcom/google/analytics/tracking/android/t;)V
    .locals 0
    .parameter

    .prologue
    .line 354
    iput-object p1, p0, Lcom/google/analytics/tracking/android/ab;->a:Lcom/google/analytics/tracking/android/t;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/analytics/tracking/android/t;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 354
    invoke-direct {p0, p1}, Lcom/google/analytics/tracking/android/ab;-><init>(Lcom/google/analytics/tracking/android/t;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/google/analytics/tracking/android/ab;->a:Lcom/google/analytics/tracking/android/t;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/t;->d(Lcom/google/analytics/tracking/android/t;)V

    .line 358
    return-void
.end method
