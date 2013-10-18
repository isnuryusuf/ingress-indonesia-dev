.class Lcom/badlogic/gdx/backends/android/AndroidInput$SensorListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field final accelerometerValues:[F

.field final magneticFieldValues:[F

.field final nativeOrientation:Lcom/badlogic/gdx/Input$Orientation;

.field final synthetic this$0:Lcom/badlogic/gdx/backends/android/AndroidInput;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/backends/android/AndroidInput;Lcom/badlogic/gdx/Input$Orientation;[F[F)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 716
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidInput$SensorListener;->this$0:Lcom/badlogic/gdx/backends/android/AndroidInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 717
    iput-object p3, p0, Lcom/badlogic/gdx/backends/android/AndroidInput$SensorListener;->accelerometerValues:[F

    .line 718
    iput-object p4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput$SensorListener;->magneticFieldValues:[F

    .line 719
    iput-object p2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput$SensorListener;->nativeOrientation:Lcom/badlogic/gdx/Input$Orientation;

    .line 720
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 725
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 729
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 730
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput$SensorListener;->nativeOrientation:Lcom/badlogic/gdx/Input$Orientation;

    sget-object v1, Lcom/badlogic/gdx/Input$Orientation;->Portrait:Lcom/badlogic/gdx/Input$Orientation;

    if-ne v0, v1, :cond_2

    .line 731
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidInput$SensorListener;->accelerometerValues:[F

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput$SensorListener;->accelerometerValues:[F

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 738
    :cond_0
    :goto_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 739
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidInput$SensorListener;->magneticFieldValues:[F

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput$SensorListener;->magneticFieldValues:[F

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 741
    :cond_1
    return-void

    .line 733
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput$SensorListener;->accelerometerValues:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v2

    aput v1, v0, v3

    .line 734
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput$SensorListener;->accelerometerValues:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v3

    neg-float v1, v1

    aput v1, v0, v2

    .line 735
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput$SensorListener;->accelerometerValues:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v4

    aput v1, v0, v4

    goto :goto_0
.end method
