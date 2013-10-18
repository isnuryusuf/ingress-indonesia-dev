.class public final Lcom/nianticproject/ingress/l/z;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static A:Lcom/nianticproject/ingress/l/z;

.field private static final a:F


# instance fields
.field private final b:Lcom/nianticproject/ingress/l/ad;

.field private final c:Landroid/hardware/SensorManager;

.field private final d:Landroid/view/Display;

.field private final e:Landroid/hardware/Sensor;

.field private final f:[F

.field private g:J

.field private final h:Landroid/hardware/Sensor;

.field private final i:[F

.field private j:J

.field private final k:Landroid/hardware/Sensor;

.field private final l:[F

.field private m:J

.field private n:F

.field private o:F

.field private p:F

.field private q:J

.field private final r:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/nianticproject/ingress/l/ac;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/l/ac;",
            ">;"
        }
    .end annotation
.end field

.field private final t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/l/ab;",
            ">;"
        }
    .end annotation
.end field

.field private final u:[F

.field private final v:[F

.field private final w:[F

.field private final x:[F

.field private final y:Lcom/nianticproject/ingress/l/a;

.field private final z:Landroid/hardware/SensorEventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/high16 v1, 0x4000

    .line 80
    invoke-static {v1}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    div-float/2addr v0, v1

    sput v0, Lcom/nianticproject/ingress/l/z;->a:F

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/nianticproject/ingress/l/ad;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x9

    const/4 v1, 0x3

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/nianticproject/ingress/l/z;->f:[F

    .line 93
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/nianticproject/ingress/l/z;->i:[F

    .line 96
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/nianticproject/ingress/l/z;->l:[F

    .line 102
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/l/z;->r:Ljava/util/WeakHashMap;

    .line 103
    invoke-static {}, Lcom/google/a/c/eq;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/l/z;->s:Ljava/util/List;

    .line 104
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/l/z;->t:Ljava/util/List;

    .line 106
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/nianticproject/ingress/l/z;->u:[F

    .line 107
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/nianticproject/ingress/l/z;->v:[F

    .line 108
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/nianticproject/ingress/l/z;->w:[F

    .line 109
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/nianticproject/ingress/l/z;->x:[F

    .line 110
    new-instance v0, Lcom/nianticproject/ingress/l/a;

    invoke-direct {v0}, Lcom/nianticproject/ingress/l/a;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/l/z;->y:Lcom/nianticproject/ingress/l/a;

    .line 111
    new-instance v0, Lcom/nianticproject/ingress/l/aa;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/l/aa;-><init>(Lcom/nianticproject/ingress/l/z;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/l/z;->z:Landroid/hardware/SensorEventListener;

    .line 149
    iput-object p2, p0, Lcom/nianticproject/ingress/l/z;->b:Lcom/nianticproject/ingress/l/ad;

    .line 150
    const-string/jumbo v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/nianticproject/ingress/l/z;->c:Landroid/hardware/SensorManager;

    .line 151
    iget-object v0, p0, Lcom/nianticproject/ingress/l/z;->c:Landroid/hardware/SensorManager;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/l/z;->e:Landroid/hardware/Sensor;

    .line 152
    iget-object v0, p0, Lcom/nianticproject/ingress/l/z;->c:Landroid/hardware/SensorManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/l/z;->h:Landroid/hardware/Sensor;

    .line 153
    iget-object v0, p0, Lcom/nianticproject/ingress/l/z;->c:Landroid/hardware/SensorManager;

    invoke-static {v0}, Lcom/nianticproject/ingress/l/z;->a(Landroid/hardware/SensorManager;)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/l/z;->k:Landroid/hardware/Sensor;

    .line 155
    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 157
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/l/z;->d:Landroid/view/Display;

    .line 158
    return-void
.end method

.method private static a(Landroid/hardware/SensorManager;)Landroid/hardware/Sensor;
    .locals 3
    .parameter

    .prologue
    .line 443
    const/4 v0, 0x0

    .line 445
    :try_start_0
    const-class v1, Landroid/hardware/Sensor;

    const-string/jumbo v2, "TYPE_ROTATION_VECTOR"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 446
    invoke-virtual {v1, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 451
    :goto_0
    return-object v0

    .line 447
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/nianticproject/ingress/l/ad;)Lcom/nianticproject/ingress/l/z;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 137
    const-class v1, Lcom/nianticproject/ingress/l/z;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/nianticproject/ingress/l/z;->A:Lcom/nianticproject/ingress/l/z;

    if-nez v0, :cond_0

    .line 138
    new-instance v0, Lcom/nianticproject/ingress/l/z;

    invoke-direct {v0, p0, p1}, Lcom/nianticproject/ingress/l/z;-><init>(Landroid/content/Context;Lcom/nianticproject/ingress/l/ad;)V

    sput-object v0, Lcom/nianticproject/ingress/l/z;->A:Lcom/nianticproject/ingress/l/z;

    .line 140
    :cond_0
    sget-object v0, Lcom/nianticproject/ingress/l/z;->A:Lcom/nianticproject/ingress/l/z;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(J[F)V
    .locals 12
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x82

    const/16 v0, 0x81

    const/4 v3, 0x2

    const/high16 v11, 0x3f80

    const/4 v1, 0x1

    .line 344
    iget-object v4, p0, Lcom/nianticproject/ingress/l/z;->d:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    move v0, v3

    move v3, v1

    .line 362
    :goto_0
    :pswitch_0
    iget-object v2, p0, Lcom/nianticproject/ingress/l/z;->x:[F

    .line 363
    iget-object v4, p0, Lcom/nianticproject/ingress/l/z;->v:[F

    invoke-static {p3, v3, v0, v4}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    move-result v0

    if-nez v0, :cond_1

    .line 401
    :cond_0
    :goto_1
    return-void

    :pswitch_1
    move v0, v1

    move v3, v2

    .line 352
    goto :goto_0

    :pswitch_2
    move v3, v0

    move v0, v2

    .line 356
    goto :goto_0

    .line 377
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/l/z;->v:[F

    const/4 v3, 0x7

    aget v0, v0, v3

    sget v3, Lcom/nianticproject/ingress/l/z;->a:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_4

    .line 378
    iget-object v0, p0, Lcom/nianticproject/ingress/l/z;->v:[F

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/nianticproject/ingress/l/z;->w:[F

    invoke-static {v0, v1, v3, v4}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/nianticproject/ingress/l/z;->w:[F

    invoke-static {v0, v2}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    .line 383
    aget v0, v2, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x42b4

    sub-float/2addr v0, v1

    move v6, v0

    .line 388
    :goto_2
    const/4 v0, 0x0

    aget v7, v2, v0

    const v8, 0x3c8efa35

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v0, p0, Lcom/nianticproject/ingress/l/z;->q:J

    const-wide/32 v2, 0x927c0

    add-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/nianticproject/ingress/l/z;->b:Lcom/nianticproject/ingress/l/ad;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/nianticproject/ingress/l/z;->b:Lcom/nianticproject/ingress/l/ad;

    invoke-interface {v0}, Lcom/nianticproject/ingress/l/ad;->a()Landroid/location/Location;

    move-result-object v0

    move-object v3, v0

    :goto_3
    if-eqz v3, :cond_2

    iput-wide v4, p0, Lcom/nianticproject/ingress/l/z;->q:J

    new-instance v0, Landroid/hardware/GeomagneticField;

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v9

    double-to-float v2, v9

    invoke-virtual {v3}, Landroid/location/Location;->getAltitude()D

    move-result-wide v9

    double-to-float v3, v9

    invoke-direct/range {v0 .. v5}, Landroid/hardware/GeomagneticField;-><init>(FFFJ)V

    invoke-virtual {v0}, Landroid/hardware/GeomagneticField;->getDeclination()F

    move-result v0

    iput v0, p0, Lcom/nianticproject/ingress/l/z;->p:F

    :cond_2
    iget v0, p0, Lcom/nianticproject/ingress/l/z;->p:F

    mul-float/2addr v0, v8

    add-float/2addr v0, v7

    invoke-static {v0}, Lcom/nianticproject/ingress/common/w/y;->d(F)F

    move-result v0

    .line 390
    iget-object v1, p0, Lcom/nianticproject/ingress/l/z;->y:Lcom/nianticproject/ingress/l/a;

    const v2, 0x42652ee1

    mul-float/2addr v0, v2

    invoke-virtual {v1, p1, p2, v0}, Lcom/nianticproject/ingress/l/a;->a(JF)F

    move-result v0

    .line 392
    iget v1, p0, Lcom/nianticproject/ingress/l/z;->n:F

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v11

    if-gez v1, :cond_3

    iget v1, p0, Lcom/nianticproject/ingress/l/z;->o:F

    sub-float v1, v6, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v11

    if-ltz v1, :cond_0

    .line 397
    :cond_3
    iput v0, p0, Lcom/nianticproject/ingress/l/z;->n:F

    .line 398
    iput v6, p0, Lcom/nianticproject/ingress/l/z;->o:F

    .line 399
    iput-wide p1, p0, Lcom/nianticproject/ingress/l/z;->m:J

    .line 400
    invoke-direct {p0}, Lcom/nianticproject/ingress/l/z;->c()V

    goto/16 :goto_1

    .line 385
    :cond_4
    iget-object v0, p0, Lcom/nianticproject/ingress/l/z;->v:[F

    invoke-static {v0, v2}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    .line 386
    aget v0, v2, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    move v6, v0

    goto :goto_2

    .line 388
    :cond_5
    const/4 v0, 0x0

    move-object v3, v0

    goto :goto_3

    .line 344
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/nianticproject/ingress/l/z;Landroid/hardware/SensorEvent;)V
    .locals 16
    .parameter
    .parameter

    .prologue
    .line 33
    :try_start_0
    const-string/jumbo v1, "OrientationTracker.onSensorUpdate"

    invoke-static {v1}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nianticproject/ingress/l/z;->k:Landroid/hardware/Sensor;

    if-ne v2, v5, :cond_3

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nianticproject/ingress/l/z;->l:[F

    const/4 v6, 0x0

    array-length v7, v1

    invoke-static {v1, v2, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nianticproject/ingress/l/z;->l:[F

    const/4 v6, 0x3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/nianticproject/ingress/l/z;->l:[F

    const/4 v2, 0x0

    array-length v8, v7

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v8, :cond_0

    aget v9, v7, v1

    mul-float/2addr v9, v9

    add-float/2addr v2, v9

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f80

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/high16 v2, 0x3f80

    sub-float v1, v2, v1

    invoke-static {v1}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v1

    aput v1, v5, v6

    :cond_1
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/nianticproject/ingress/l/z;->m:J

    const-wide/16 v5, 0x32

    add-long/2addr v1, v5

    cmp-long v1, v1, v3

    if-gtz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nianticproject/ingress/l/z;->u:[F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nianticproject/ingress/l/z;->l:[F

    const/4 v5, 0x3

    aget v5, v2, v5

    const/4 v6, 0x0

    aget v6, v2, v6

    const/4 v7, 0x1

    aget v7, v2, v7

    const/4 v8, 0x2

    aget v2, v2, v8

    const/high16 v8, 0x4000

    mul-float/2addr v8, v6

    mul-float/2addr v8, v6

    const/high16 v9, 0x4000

    mul-float/2addr v9, v7

    mul-float/2addr v9, v7

    const/high16 v10, 0x4000

    mul-float/2addr v10, v2

    mul-float/2addr v10, v2

    const/high16 v11, 0x4000

    mul-float/2addr v11, v6

    mul-float/2addr v11, v7

    const/high16 v12, 0x4000

    mul-float/2addr v12, v2

    mul-float/2addr v12, v5

    const/high16 v13, 0x4000

    mul-float/2addr v13, v6

    mul-float/2addr v13, v2

    const/high16 v14, 0x4000

    mul-float/2addr v14, v7

    mul-float/2addr v14, v5

    const/high16 v15, 0x4000

    mul-float/2addr v7, v15

    mul-float/2addr v2, v7

    const/high16 v7, 0x4000

    mul-float/2addr v6, v7

    mul-float/2addr v5, v6

    const/4 v6, 0x0

    const/high16 v7, 0x3f80

    sub-float/2addr v7, v9

    sub-float/2addr v7, v10

    aput v7, v1, v6

    const/4 v6, 0x1

    sub-float v7, v11, v12

    aput v7, v1, v6

    const/4 v6, 0x2

    add-float v7, v13, v14

    aput v7, v1, v6

    const/4 v6, 0x3

    add-float v7, v11, v12

    aput v7, v1, v6

    const/4 v6, 0x4

    const/high16 v7, 0x3f80

    sub-float/2addr v7, v8

    sub-float/2addr v7, v10

    aput v7, v1, v6

    const/4 v6, 0x5

    sub-float v7, v2, v5

    aput v7, v1, v6

    const/4 v6, 0x6

    sub-float v7, v13, v14

    aput v7, v1, v6

    const/4 v6, 0x7

    add-float/2addr v2, v5

    aput v2, v1, v6

    const/16 v2, 0x8

    const/high16 v5, 0x3f80

    sub-float/2addr v5, v8

    sub-float/2addr v5, v9

    aput v5, v1, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v1}, Lcom/nianticproject/ingress/l/z;->a(J[F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_1
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    return-void

    :cond_3
    :try_start_1
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nianticproject/ingress/l/z;->e:Landroid/hardware/Sensor;

    if-ne v2, v5, :cond_4

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/nianticproject/ingress/l/z;->g:J

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nianticproject/ingress/l/z;->f:[F

    const/4 v6, 0x0

    array-length v7, v1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/nianticproject/ingress/l/z;->f:[F

    array-length v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v1, v2, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v5, 0x0

    aget v5, v1, v5

    mul-float/2addr v2, v5

    const/4 v5, 0x1

    aget v5, v1, v5

    const/4 v6, 0x1

    aget v6, v1, v6

    mul-float/2addr v5, v6

    add-float/2addr v2, v5

    const/4 v5, 0x2

    aget v5, v1, v5

    const/4 v6, 0x2

    aget v1, v1, v6

    mul-float/2addr v1, v5

    add-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v2, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nianticproject/ingress/l/z;->t:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/l/ab;

    invoke-interface {v1, v2}, Lcom/nianticproject/ingress/l/ab;->a(F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v1

    :cond_4
    :try_start_2
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nianticproject/ingress/l/z;->h:Landroid/hardware/Sensor;

    if-ne v2, v5, :cond_5

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/nianticproject/ingress/l/z;->j:J

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nianticproject/ingress/l/z;->i:[F

    const/4 v6, 0x0

    array-length v7, v1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/nianticproject/ingress/l/z;->i:[F

    array-length v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v1, v2, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/nianticproject/ingress/l/z;->m:J

    const-wide/16 v5, 0x32

    add-long/2addr v1, v5

    cmp-long v1, v1, v3

    if-gtz v1, :cond_2

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/nianticproject/ingress/l/z;->g:J

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/nianticproject/ingress/l/z;->j:J

    sub-long/2addr v1, v5

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/16 v5, 0x1388

    cmp-long v1, v1, v5

    if-gtz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nianticproject/ingress/l/z;->u:[F

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nianticproject/ingress/l/z;->f:[F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nianticproject/ingress/l/z;->i:[F

    invoke-static {v1, v2, v5, v6}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v1}, Lcom/nianticproject/ingress/l/z;->a(J[F)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1
.end method

.method private c()V
    .locals 4

    .prologue
    .line 426
    iget-object v1, p0, Lcom/nianticproject/ingress/l/z;->r:Ljava/util/WeakHashMap;

    monitor-enter v1

    .line 427
    :try_start_0
    iget-object v0, p0, Lcom/nianticproject/ingress/l/z;->s:Ljava/util/List;

    iget-object v2, p0, Lcom/nianticproject/ingress/l/z;->r:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 428
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 429
    iget-object v0, p0, Lcom/nianticproject/ingress/l/z;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/l/ac;

    .line 430
    iget v2, p0, Lcom/nianticproject/ingress/l/z;->n:F

    iget v3, p0, Lcom/nianticproject/ingress/l/z;->o:F

    invoke-interface {v0, v2}, Lcom/nianticproject/ingress/l/ac;->a(F)V

    goto :goto_0

    .line 428
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/l/z;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 433
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 193
    :try_start_0
    const-string/jumbo v0, "OrientationTracker.resume"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 194
    sget-object v0, Lcom/nianticproject/ingress/o/a/a;->b:Lcom/nianticproject/ingress/o/a/a;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/o/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/nianticproject/ingress/l/z;->c:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/nianticproject/ingress/l/z;->z:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/nianticproject/ingress/l/z;->e:Landroid/hardware/Sensor;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/l/z;->k:Landroid/hardware/Sensor;

    if-eqz v0, :cond_2

    .line 200
    iget-object v0, p0, Lcom/nianticproject/ingress/l/z;->c:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/nianticproject/ingress/l/z;->z:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/nianticproject/ingress/l/z;->k:Landroid/hardware/Sensor;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    :cond_1
    :goto_0
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 210
    return-void

    .line 202
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/nianticproject/ingress/l/z;->c:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/nianticproject/ingress/l/z;->z:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/nianticproject/ingress/l/z;->h:Landroid/hardware/Sensor;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 204
    sget-object v0, Lcom/nianticproject/ingress/o/a/a;->b:Lcom/nianticproject/ingress/o/a/a;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/o/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 205
    iget-object v0, p0, Lcom/nianticproject/ingress/l/z;->c:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/nianticproject/ingress/l/z;->z:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/nianticproject/ingress/l/z;->e:Landroid/hardware/Sensor;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 209
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method public final a(Lcom/nianticproject/ingress/l/ab;)V
    .locals 1
    .parameter

    .prologue
    .line 185
    iget-object v0, p0, Lcom/nianticproject/ingress/l/z;->t:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/l/ac;)V
    .locals 3
    .parameter

    .prologue
    .line 166
    iget-object v1, p0, Lcom/nianticproject/ingress/l/z;->r:Ljava/util/WeakHashMap;

    monitor-enter v1

    .line 167
    :try_start_0
    iget-object v0, p0, Lcom/nianticproject/ingress/l/z;->r:Ljava/util/WeakHashMap;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 218
    :try_start_0
    const-string/jumbo v0, "OrientationTracker.pause"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/nianticproject/ingress/l/z;->c:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/nianticproject/ingress/l/z;->z:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 222
    return-void

    .line 221
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method
