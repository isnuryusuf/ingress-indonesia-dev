.class final Lcom/google/analytics/tracking/android/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/google/analytics/tracking/android/d;


# direct methods
.method constructor <init>(Lcom/google/analytics/tracking/android/d;)V
    .locals 0
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/google/analytics/tracking/android/e;->a:Lcom/google/analytics/tracking/android/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "service connected, binder: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/aq;->a(Ljava/lang/String;)I

    .line 176
    :try_start_0
    invoke-interface {p2}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 177
    const-string/jumbo v1, "com.google.android.gms.analytics.internal.IAnalyticsService"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    const-string/jumbo v0, "bound to service"

    invoke-static {v0}, Lcom/google/analytics/tracking/android/aq;->a(Ljava/lang/String;)I

    .line 180
    iget-object v0, p0, Lcom/google/analytics/tracking/android/e;->a:Lcom/google/analytics/tracking/android/d;

    invoke-static {p2}, Lcom/google/android/gms/analytics/internal/c;->a(Landroid/os/IBinder;)Lcom/google/android/gms/analytics/internal/b;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/analytics/tracking/android/d;->a(Lcom/google/analytics/tracking/android/d;Lcom/google/android/gms/analytics/internal/b;)Lcom/google/android/gms/analytics/internal/b;

    .line 181
    iget-object v0, p0, Lcom/google/analytics/tracking/android/e;->a:Lcom/google/analytics/tracking/android/d;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/d;->a(Lcom/google/analytics/tracking/android/d;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/google/analytics/tracking/android/e;->a:Lcom/google/analytics/tracking/android/d;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/d;->b(Lcom/google/analytics/tracking/android/d;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 190
    iget-object v0, p0, Lcom/google/analytics/tracking/android/e;->a:Lcom/google/analytics/tracking/android/d;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/d;->c(Lcom/google/analytics/tracking/android/d;)Landroid/content/ServiceConnection;

    .line 191
    iget-object v0, p0, Lcom/google/analytics/tracking/android/e;->a:Lcom/google/analytics/tracking/android/d;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/d;->d(Lcom/google/analytics/tracking/android/d;)Lcom/google/analytics/tracking/android/g;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/google/analytics/tracking/android/g;->a(I)V

    goto :goto_0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter

    .prologue
    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "service disconnected: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/aq;->a(Ljava/lang/String;)I

    .line 197
    iget-object v0, p0, Lcom/google/analytics/tracking/android/e;->a:Lcom/google/analytics/tracking/android/d;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/d;->c(Lcom/google/analytics/tracking/android/d;)Landroid/content/ServiceConnection;

    .line 198
    iget-object v0, p0, Lcom/google/analytics/tracking/android/e;->a:Lcom/google/analytics/tracking/android/d;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/d;->e(Lcom/google/analytics/tracking/android/d;)Lcom/google/analytics/tracking/android/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/f;->b()V

    .line 199
    return-void
.end method
