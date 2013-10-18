.class final Lcom/nianticproject/ingress/l/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/l/z;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/l/z;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/nianticproject/ingress/l/aa;->a:Lcom/nianticproject/ingress/l/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 115
    :try_start_0
    const-string/jumbo v0, "SensorEventListener.onAccuracyChanged"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 118
    return-void

    .line 117
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 1
    .parameter

    .prologue
    .line 126
    :try_start_0
    const-string/jumbo v0, "SensorEventListener.onSensorChanged"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/nianticproject/ingress/l/aa;->a:Lcom/nianticproject/ingress/l/z;

    invoke-static {v0, p1}, Lcom/nianticproject/ingress/l/z;->a(Lcom/nianticproject/ingress/l/z;Landroid/hardware/SensorEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 130
    return-void

    .line 129
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method
