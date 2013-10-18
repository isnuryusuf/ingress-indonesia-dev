.class final Lcom/google/analytics/tracking/android/af;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/analytics/tracking/android/am;

.field final synthetic b:Lcom/google/analytics/tracking/android/ac;


# direct methods
.method constructor <init>(Lcom/google/analytics/tracking/android/ac;Lcom/google/analytics/tracking/android/am;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 305
    iput-object p1, p0, Lcom/google/analytics/tracking/android/af;->b:Lcom/google/analytics/tracking/android/ac;

    iput-object p2, p0, Lcom/google/analytics/tracking/android/af;->a:Lcom/google/analytics/tracking/android/am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/google/analytics/tracking/android/af;->a:Lcom/google/analytics/tracking/android/am;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/af;->b:Lcom/google/analytics/tracking/android/ac;

    invoke-static {v1}, Lcom/google/analytics/tracking/android/ac;->b(Lcom/google/analytics/tracking/android/ac;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/analytics/tracking/android/am;->a(Z)V

    .line 310
    return-void
.end method
