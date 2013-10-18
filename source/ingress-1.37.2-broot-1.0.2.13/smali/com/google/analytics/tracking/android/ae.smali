.class final Lcom/google/analytics/tracking/android/ae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/analytics/tracking/android/ac;


# direct methods
.method constructor <init>(Lcom/google/analytics/tracking/android/ac;)V
    .locals 0
    .parameter

    .prologue
    .line 265
    iput-object p1, p0, Lcom/google/analytics/tracking/android/ae;->a:Lcom/google/analytics/tracking/android/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/google/analytics/tracking/android/ae;->a:Lcom/google/analytics/tracking/android/ac;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/ac;->g(Lcom/google/analytics/tracking/android/ac;)Lcom/google/analytics/tracking/android/bc;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/bc;->c()V

    .line 270
    return-void
.end method
