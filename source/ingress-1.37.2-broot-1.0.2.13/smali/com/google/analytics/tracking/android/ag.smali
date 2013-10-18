.class final Lcom/google/analytics/tracking/android/ag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/analytics/tracking/android/k;

.field final synthetic b:Lcom/google/analytics/tracking/android/ac;


# direct methods
.method constructor <init>(Lcom/google/analytics/tracking/android/ac;Lcom/google/analytics/tracking/android/k;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 317
    iput-object p1, p0, Lcom/google/analytics/tracking/android/ag;->b:Lcom/google/analytics/tracking/android/ac;

    iput-object p2, p0, Lcom/google/analytics/tracking/android/ag;->a:Lcom/google/analytics/tracking/android/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/google/analytics/tracking/android/ag;->a:Lcom/google/analytics/tracking/android/k;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/ag;->b:Lcom/google/analytics/tracking/android/ac;

    invoke-static {v1}, Lcom/google/analytics/tracking/android/ac;->a(Lcom/google/analytics/tracking/android/ac;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/analytics/tracking/android/k;->a(Ljava/lang/String;)V

    .line 322
    return-void
.end method
