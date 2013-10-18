.class public Lcom/nianticproject/ingress/l/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final D:Ljava/text/SimpleDateFormat;

.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field private static final c:Z

.field private static d:Z

.field private static e:I

.field private static f:I

.field private static g:Lcom/nianticproject/ingress/l/d;

.field private static j:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Collection",
            "<",
            "Lcom/nianticproject/ingress/l/q;",
            ">;>;"
        }
    .end annotation
.end field

.field private static k:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/location/Location;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final l:Lcom/nianticproject/ingress/common/w/aa;

.field private static m:Lcom/nianticproject/ingress/l/f;


# instance fields
.field private final A:Landroid/location/LocationListener;

.field private final B:Lcom/nianticproject/ingress/l/ae;

.field private final C:Lcom/nianticproject/ingress/l/s;

.field private h:Z

.field private final i:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/nianticproject/ingress/l/p;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Landroid/content/Context;

.field private final o:Landroid/location/LocationManager;

.field private final p:Lcom/nianticproject/ingress/l/ai;

.field private q:Z

.field private final r:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/location/LocationListener;",
            "Lcom/nianticproject/ingress/l/q;",
            ">;"
        }
    .end annotation
.end field

.field private final s:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Lcom/nianticproject/ingress/l/y;",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field private final t:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Lcom/nianticproject/ingress/l/y;",
            "Lcom/nianticproject/ingress/common/x;",
            ">;"
        }
    .end annotation
.end field

.field private u:Landroid/location/GpsStatus;

.field private v:Landroid/location/Location;

.field private w:Landroid/database/ContentObserver;

.field private x:Z

.field private final y:Landroid/location/LocationListener;

.field private final z:Landroid/location/GpsStatus$Listener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 78
    const-string/jumbo v0, "network"

    const-string/jumbo v1, "cell"

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/l/y;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/ingress/l/f;->a:Ljava/lang/String;

    .line 80
    const-string/jumbo v0, "network"

    const-string/jumbo v1, "wifi"

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/l/y;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/ingress/l/f;->b:Ljava/lang/String;

    .line 121
    sget-object v0, Lcom/nianticproject/ingress/o/a/a;->b:Lcom/nianticproject/ingress/o/a/a;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/o/a/a;->a()Z

    move-result v0

    sput-boolean v0, Lcom/nianticproject/ingress/l/f;->c:Z

    .line 125
    const/4 v0, 0x0

    sput-boolean v0, Lcom/nianticproject/ingress/l/f;->d:Z

    .line 126
    const/4 v0, 0x5

    sput v0, Lcom/nianticproject/ingress/l/f;->e:I

    .line 127
    const/16 v0, 0x1388

    sput v0, Lcom/nianticproject/ingress/l/f;->f:I

    .line 170
    new-instance v0, Lcom/nianticproject/ingress/l/g;

    invoke-direct {v0}, Lcom/nianticproject/ingress/l/g;-><init>()V

    sput-object v0, Lcom/nianticproject/ingress/l/f;->j:Ljava/lang/ThreadLocal;

    .line 179
    new-instance v0, Lcom/nianticproject/ingress/l/h;

    invoke-direct {v0}, Lcom/nianticproject/ingress/l/h;-><init>()V

    sput-object v0, Lcom/nianticproject/ingress/l/f;->k:Ljava/lang/ThreadLocal;

    .line 187
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/l/f;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/nianticproject/ingress/l/f;->l:Lcom/nianticproject/ingress/common/w/aa;

    .line 791
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "MMdd-HH:mm:ss.SSS"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/nianticproject/ingress/l/f;->D:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 477
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/l/f;->i:Ljava/util/concurrent/atomic/AtomicReference;

    .line 345
    iput-boolean v1, p0, Lcom/nianticproject/ingress/l/f;->q:Z

    .line 346
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/l/f;->r:Ljava/util/WeakHashMap;

    .line 348
    const-class v0, Lcom/nianticproject/ingress/l/y;

    invoke-static {v0}, Lcom/google/a/c/hc;->a(Ljava/lang/Class;)Ljava/util/EnumMap;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/l/f;->s:Ljava/util/EnumMap;

    .line 349
    const-class v0, Lcom/nianticproject/ingress/l/y;

    invoke-static {v0}, Lcom/google/a/c/hc;->a(Ljava/lang/Class;)Ljava/util/EnumMap;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/l/f;->t:Ljava/util/EnumMap;

    .line 351
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/l/f;->u:Landroid/location/GpsStatus;

    .line 354
    iput-boolean v1, p0, Lcom/nianticproject/ingress/l/f;->x:Z

    .line 356
    new-instance v0, Lcom/nianticproject/ingress/l/j;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/l/j;-><init>(Lcom/nianticproject/ingress/l/f;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/l/f;->y:Landroid/location/LocationListener;

    .line 367
    new-instance v0, Lcom/nianticproject/ingress/l/k;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/l/k;-><init>(Lcom/nianticproject/ingress/l/f;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/l/f;->z:Landroid/location/GpsStatus$Listener;

    .line 453
    new-instance v0, Lcom/nianticproject/ingress/l/u;

    invoke-direct {v0, p0, v1}, Lcom/nianticproject/ingress/l/u;-><init>(Lcom/nianticproject/ingress/l/f;B)V

    iput-object v0, p0, Lcom/nianticproject/ingress/l/f;->A:Landroid/location/LocationListener;

    .line 455
    new-instance v0, Lcom/nianticproject/ingress/l/s;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/l/s;-><init>(Lcom/nianticproject/ingress/l/f;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/l/f;->C:Lcom/nianticproject/ingress/l/s;

    .line 478
    iput-object p1, p0, Lcom/nianticproject/ingress/l/f;->n:Landroid/content/Context;

    .line 479
    new-instance v0, Lcom/nianticproject/ingress/l/ae;

    invoke-direct {v0}, Lcom/nianticproject/ingress/l/ae;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/l/f;->B:Lcom/nianticproject/ingress/l/ae;

    .line 481
    const-string/jumbo v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/nianticproject/ingress/l/f;->o:Landroid/location/LocationManager;

    .line 483
    new-instance v0, Lcom/nianticproject/ingress/l/ai;

    const-string/jumbo v1, "LocationTracker"

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/l/ai;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/l/f;->p:Lcom/nianticproject/ingress/l/ai;

    .line 484
    invoke-static {}, Lcom/nianticproject/ingress/common/s/c;->t()Z

    move-result v0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/l/f;->h:Z

    .line 485
    iget-object v0, p0, Lcom/nianticproject/ingress/l/f;->p:Lcom/nianticproject/ingress/l/ai;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/l/ai;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/nianticproject/ingress/l/l;

    invoke-direct {v1, p0}, Lcom/nianticproject/ingress/l/l;-><init>(Lcom/nianticproject/ingress/l/f;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 495
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/l/f;Landroid/location/GpsStatus;)Landroid/location/GpsStatus;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/nianticproject/ingress/l/f;->u:Landroid/location/GpsStatus;

    return-object p1
.end method

.method private a(Ljava/util/List;)Lcom/nianticproject/ingress/common/u/av;
    .locals 17
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/location/Location;",
            ">;)",
            "Lcom/nianticproject/ingress/common/u/av;"
        }
    .end annotation

    .prologue
    .line 1003
    :try_start_0
    const-string/jumbo v1, "LocationTracker.createSignalLog"

    invoke-static {v1}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 1004
    invoke-static {}, Lcom/nianticproject/ingress/common/u/av;->u()Lcom/nianticproject/ingress/common/u/aw;

    move-result-object v12

    .line 1006
    const/4 v1, 0x0

    move v11, v1

    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v11, v1, :cond_2

    .line 1007
    invoke-static {}, Lcom/nianticproject/ingress/common/u/ax;->A()Lcom/nianticproject/ingress/common/u/ay;

    move-result-object v13

    .line 1008
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/location/Location;

    move-object v9, v0

    .line 1009
    invoke-virtual {v9}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nianticproject/ingress/l/y;->a(Ljava/lang/String;)Lcom/nianticproject/ingress/l/y;

    move-result-object v1

    .line 1010
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nianticproject/ingress/l/f;->t:Ljava/util/EnumMap;

    invoke-virtual {v2, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/common/x;

    .line 1011
    if-eqz v1, :cond_0

    .line 1012
    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/x;->g()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    const-wide v4, 0x41584db080000000L

    mul-double/2addr v2, v4

    double-to-float v2, v2

    .line 1014
    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/x;->a()D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v3, v2

    invoke-virtual {v13, v3}, Lcom/nianticproject/ingress/common/u/ay;->d(F)Lcom/nianticproject/ingress/common/u/ay;

    .line 1015
    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/x;->b()D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v2, v3

    invoke-virtual {v13, v2}, Lcom/nianticproject/ingress/common/u/ay;->e(F)Lcom/nianticproject/ingress/common/u/ay;

    .line 1016
    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/x;->c()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v13, v2}, Lcom/nianticproject/ingress/common/u/ay;->f(F)Lcom/nianticproject/ingress/common/u/ay;

    .line 1017
    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/x;->d()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v13, v2}, Lcom/nianticproject/ingress/common/u/ay;->g(F)Lcom/nianticproject/ingress/common/u/ay;

    .line 1018
    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/x;->e()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v13, v2}, Lcom/nianticproject/ingress/common/u/ay;->h(F)Lcom/nianticproject/ingress/common/u/ay;

    .line 1019
    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/x;->f()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v13, v2}, Lcom/nianticproject/ingress/common/u/ay;->i(F)Lcom/nianticproject/ingress/common/u/ay;

    .line 1020
    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/x;->h()I

    move-result v1

    invoke-virtual {v13, v1}, Lcom/nianticproject/ingress/common/u/ay;->a(I)Lcom/nianticproject/ingress/common/u/ay;

    .line 1023
    :cond_0
    invoke-virtual {v9}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Lcom/nianticproject/ingress/common/u/ay;->a(Ljava/lang/String;)Lcom/nianticproject/ingress/common/u/ay;

    .line 1024
    invoke-virtual {v9}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    invoke-virtual {v13, v1}, Lcom/nianticproject/ingress/common/u/ay;->a(F)Lcom/nianticproject/ingress/common/u/ay;

    .line 1025
    invoke-virtual {v9}, Landroid/location/Location;->getAltitude()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {v13, v1}, Lcom/nianticproject/ingress/common/u/ay;->b(F)Lcom/nianticproject/ingress/common/u/ay;

    .line 1027
    add-int/lit8 v1, v11, 0x1

    move v10, v1

    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v10, v1, :cond_1

    .line 1028
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/location/Location;

    move-object v7, v0

    .line 1029
    invoke-virtual {v9}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v9}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v7}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    invoke-virtual {v7}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    invoke-static/range {v1 .. v8}, Lcom/nianticproject/ingress/shared/b/a;->a(DDDD)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {v13, v1}, Lcom/nianticproject/ingress/common/u/ay;->c(F)Lcom/nianticproject/ingress/common/u/ay;

    .line 1027
    add-int/lit8 v1, v10, 0x1

    move v10, v1

    goto :goto_1

    .line 1034
    :cond_1
    invoke-virtual {v9}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    invoke-virtual {v13, v1, v2}, Lcom/nianticproject/ingress/common/u/ay;->a(J)Lcom/nianticproject/ingress/common/u/ay;

    .line 1035
    invoke-virtual {v13}, Lcom/nianticproject/ingress/common/u/ay;->c()Lcom/nianticproject/ingress/common/u/ax;

    move-result-object v1

    invoke-virtual {v12, v1}, Lcom/nianticproject/ingress/common/u/aw;->a(Lcom/nianticproject/ingress/common/u/ax;)Lcom/nianticproject/ingress/common/u/aw;

    .line 1006
    add-int/lit8 v1, v11, 0x1

    move v11, v1

    goto/16 :goto_0

    .line 1038
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nianticproject/ingress/l/f;->u:Landroid/location/GpsStatus;

    if-eqz v1, :cond_3

    .line 1039
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nianticproject/ingress/l/f;->u:Landroid/location/GpsStatus;

    invoke-virtual {v1}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/GpsSatellite;

    .line 1040
    invoke-virtual {v1}, Landroid/location/GpsSatellite;->getPrn()I

    move-result v3

    invoke-virtual {v12, v3}, Lcom/nianticproject/ingress/common/u/aw;->a(I)Lcom/nianticproject/ingress/common/u/aw;

    .line 1041
    invoke-virtual {v1}, Landroid/location/GpsSatellite;->getAzimuth()F

    move-result v1

    invoke-virtual {v12, v1}, Lcom/nianticproject/ingress/common/u/aw;->a(F)Lcom/nianticproject/ingress/common/u/aw;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 1051
    :catchall_0
    move-exception v1

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v1

    .line 1045
    :cond_3
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v12, v1, v2}, Lcom/nianticproject/ingress/common/u/aw;->a(J)Lcom/nianticproject/ingress/common/u/aw;

    .line 1046
    invoke-static {}, Lcom/nianticproject/ingress/ab;->a()Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;

    move-result-object v1

    if-nez v1, :cond_4

    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v12, v1}, Lcom/nianticproject/ingress/common/u/aw;->a(Lcom/nianticproject/ingress/common/u/at;)Lcom/nianticproject/ingress/common/u/aw;

    .line 1049
    invoke-virtual {v12}, Lcom/nianticproject/ingress/common/u/aw;->c()Lcom/nianticproject/ingress/common/u/av;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 1051
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    return-object v1

    .line 1046
    :cond_4
    :try_start_2
    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->a()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->f()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->g()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->h()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->i()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->j()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->k()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->l()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->m()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->n()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/nianticproject/ingress/common/u/at;->G()Lcom/nianticproject/ingress/common/u/au;

    move-result-object v16

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/nianticproject/ingress/common/u/au;->a(Z)Lcom/nianticproject/ingress/common/u/au;

    :cond_5
    if-eqz v3, :cond_6

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/nianticproject/ingress/common/u/au;->a(Ljava/lang/String;)Lcom/nianticproject/ingress/common/u/au;

    :cond_6
    if-eqz v4, :cond_7

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/nianticproject/ingress/common/u/au;->b(Ljava/lang/String;)Lcom/nianticproject/ingress/common/u/au;

    :cond_7
    if-eqz v5, :cond_8

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/nianticproject/ingress/common/u/au;->c(Ljava/lang/String;)Lcom/nianticproject/ingress/common/u/au;

    :cond_8
    if-eqz v6, :cond_9

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Lcom/nianticproject/ingress/common/u/au;->d(Ljava/lang/String;)Lcom/nianticproject/ingress/common/u/au;

    :cond_9
    if-eqz v7, :cond_a

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Lcom/nianticproject/ingress/common/u/au;->e(Ljava/lang/String;)Lcom/nianticproject/ingress/common/u/au;

    :cond_a
    if-eqz v8, :cond_b

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Lcom/nianticproject/ingress/common/u/au;->f(Ljava/lang/String;)Lcom/nianticproject/ingress/common/u/au;

    :cond_b
    if-eqz v9, :cond_c

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Lcom/nianticproject/ingress/common/u/au;->g(Ljava/lang/String;)Lcom/nianticproject/ingress/common/u/au;

    :cond_c
    if-eqz v10, :cond_d

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Lcom/nianticproject/ingress/common/u/au;->h(Ljava/lang/String;)Lcom/nianticproject/ingress/common/u/au;

    :cond_d
    if-eqz v11, :cond_e

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Lcom/nianticproject/ingress/common/u/au;->i(Ljava/lang/String;)Lcom/nianticproject/ingress/common/u/au;

    :cond_e
    if-eqz v13, :cond_f

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Lcom/nianticproject/ingress/common/u/au;->j(Ljava/lang/String;)Lcom/nianticproject/ingress/common/u/au;

    :cond_f
    if-eqz v14, :cond_10

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Lcom/nianticproject/ingress/common/u/au;->k(Ljava/lang/String;)Lcom/nianticproject/ingress/common/u/au;

    :cond_10
    if-eqz v15, :cond_11

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/nianticproject/ingress/common/u/au;->l(Ljava/lang/String;)Lcom/nianticproject/ingress/common/u/au;

    :cond_11
    if-eqz v1, :cond_12

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/u/au;->m(Ljava/lang/String;)Lcom/nianticproject/ingress/common/u/au;

    :cond_12
    invoke-virtual/range {v16 .. v16}, Lcom/nianticproject/ingress/common/u/au;->c()Lcom/nianticproject/ingress/common/u/at;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    goto/16 :goto_3
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/nianticproject/ingress/l/f;
    .locals 2
    .parameter

    .prologue
    .line 458
    const-class v1, Lcom/nianticproject/ingress/l/f;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/nianticproject/ingress/l/f;->m:Lcom/nianticproject/ingress/l/f;

    if-nez v0, :cond_0

    .line 459
    new-instance v0, Lcom/nianticproject/ingress/l/f;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/l/f;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/nianticproject/ingress/l/f;->m:Lcom/nianticproject/ingress/l/f;

    .line 461
    :cond_0
    sget-object v0, Lcom/nianticproject/ingress/l/f;->m:Lcom/nianticproject/ingress/l/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 458
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(J)Ljava/lang/String;
    .locals 15
    .parameter

    .prologue
    .line 800
    iget-object v1, p0, Lcom/nianticproject/ingress/l/f;->u:Landroid/location/GpsStatus;

    if-nez v1, :cond_0

    .line 801
    const-string/jumbo v1, ""

    .line 819
    :goto_0
    return-object v1

    .line 804
    :cond_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 805
    iget-object v13, p0, Lcom/nianticproject/ingress/l/f;->u:Landroid/location/GpsStatus;

    monitor-enter v13

    .line 806
    :try_start_0
    iget-object v1, p0, Lcom/nianticproject/ingress/l/f;->u:Landroid/location/GpsStatus;

    invoke-virtual {v1}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/location/GpsSatellite;

    move-object v3, v0

    .line 807
    const-string/jumbo v1, " sat "

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 808
    invoke-virtual {v3}, Landroid/location/GpsSatellite;->getPrn()I

    move-result v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 809
    const-string/jumbo v1, ": SNR "

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 810
    invoke-virtual {v3}, Landroid/location/GpsSatellite;->getSnr()F

    move-result v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 811
    const-string/jumbo v1, " AZ "

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 812
    invoke-virtual {v3}, Landroid/location/GpsSatellite;->getAzimuth()F

    move-result v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 813
    const-string/jumbo v1, " EL "

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 814
    invoke-virtual {v3}, Landroid/location/GpsSatellite;->getElevation()F

    move-result v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 815
    sget-object v1, Lcom/nianticproject/ingress/l/f;->g:Lcom/nianticproject/ingress/l/d;

    invoke-virtual {v3}, Landroid/location/GpsSatellite;->getPrn()I

    move-result v2

    invoke-virtual {v3}, Landroid/location/GpsSatellite;->getSnr()F

    move-result v4

    float-to-double v5, v4

    invoke-virtual {v3}, Landroid/location/GpsSatellite;->getAzimuth()F

    move-result v4

    float-to-double v7, v4

    invoke-virtual {v3}, Landroid/location/GpsSatellite;->getElevation()F

    move-result v4

    float-to-double v9, v4

    invoke-virtual {v3}, Landroid/location/GpsSatellite;->usedInFix()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v11, 0x1

    :goto_2
    move-wide/from16 v3, p1

    invoke-virtual/range {v1 .. v11}, Lcom/nianticproject/ingress/l/d;->a(IJDDDI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 818
    :catchall_0
    move-exception v1

    monitor-exit v13

    throw v1

    .line 815
    :cond_1
    const/4 v11, 0x0

    goto :goto_2

    .line 818
    :cond_2
    :try_start_1
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 819
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method private static a(Landroid/location/Location;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 795
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/nianticproject/ingress/l/f;->D:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/location/Location;Lcom/nianticproject/ingress/common/u/av;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 770
    :try_start_0
    const-string/jumbo v0, "LocationTracker.notifyLocationUpdate"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 771
    iget-object v0, p0, Lcom/nianticproject/ingress/l/f;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_0

    .line 786
    iput-object p1, p0, Lcom/nianticproject/ingress/l/f;->v:Landroid/location/Location;

    .line 787
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 788
    :goto_0
    return-void

    .line 775
    :cond_0
    :try_start_1
    new-instance v1, Landroid/location/Location;

    invoke-direct {v1, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 778
    iget-object v2, p0, Lcom/nianticproject/ingress/l/f;->r:Ljava/util/WeakHashMap;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 779
    :try_start_2
    sget-object v0, Lcom/nianticproject/ingress/l/f;->j:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 780
    sget-object v0, Lcom/nianticproject/ingress/l/f;->j:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    iget-object v3, p0, Lcom/nianticproject/ingress/l/f;->r:Ljava/util/WeakHashMap;

    invoke-virtual {v3}, Ljava/util/WeakHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 781
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 782
    :try_start_3
    sget-object v0, Lcom/nianticproject/ingress/l/f;->j:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/l/q;

    .line 783
    invoke-virtual {v0, v1, p2}, Lcom/nianticproject/ingress/l/q;->a(Landroid/location/Location;Lcom/nianticproject/ingress/common/u/av;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 786
    :catchall_0
    move-exception v0

    iput-object p1, p0, Lcom/nianticproject/ingress/l/f;->v:Landroid/location/Location;

    .line 787
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0

    .line 781
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v2

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 786
    :cond_1
    iput-object p1, p0, Lcom/nianticproject/ingress/l/f;->v:Landroid/location/Location;

    .line 787
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/l/f;)V
    .locals 2
    .parameter

    .prologue
    .line 62
    :try_start_0
    const-string/jumbo v0, "LocationTracker.onPause"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/nianticproject/ingress/l/f;->q:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/nianticproject/ingress/l/f;->q:Z

    iget-object v0, p0, Lcom/nianticproject/ingress/l/f;->n:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/l/f;->w:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/nianticproject/ingress/l/f;->o:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/nianticproject/ingress/l/f;->y:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    iget-object v0, p0, Lcom/nianticproject/ingress/l/f;->o:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/nianticproject/ingress/l/f;->A:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    iget-object v0, p0, Lcom/nianticproject/ingress/l/f;->C:Lcom/nianticproject/ingress/l/s;

    iget-object v1, v0, Lcom/nianticproject/ingress/l/s;->a:Lcom/google/android/gms/location/c;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/nianticproject/ingress/l/s;->a:Lcom/google/android/gms/location/c;

    invoke-virtual {v1}, Lcom/google/android/gms/location/c;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/nianticproject/ingress/l/s;->a:Lcom/google/android/gms/location/c;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/location/c;->a(Lcom/google/android/gms/location/d;)V

    :cond_1
    iget-object v1, v0, Lcom/nianticproject/ingress/l/s;->a:Lcom/google/android/gms/location/c;

    invoke-virtual {v1}, Lcom/google/android/gms/location/c;->c()V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/nianticproject/ingress/l/s;->a:Lcom/google/android/gms/location/c;

    :cond_2
    iget-object v0, p0, Lcom/nianticproject/ingress/l/f;->v:Landroid/location/Location;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nianticproject/ingress/l/f;->v:Landroid/location/Location;

    const v1, 0x47c34f80

    invoke-virtual {v0, v1}, Landroid/location/Location;->setAccuracy(F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/l/f;Landroid/location/Location;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 62
    :try_start_0
    const-string/jumbo v0, "MyLocationListener.onLocationChanged"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nianticproject/ingress/l/f;->p:Lcom/nianticproject/ingress/l/ai;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/l/ai;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/nianticproject/ingress/l/i;

    invoke-direct {v1, p0, p1}, Lcom/nianticproject/ingress/l/i;-><init>(Lcom/nianticproject/ingress/l/f;Landroid/location/Location;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method private a(Ljava/lang/String;Landroid/location/Location;)V
    .locals 12
    .parameter
    .parameter

    .prologue
    .line 709
    :try_start_0
    const-string/jumbo v0, "LocationTracker.setLocation"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 711
    if-nez p2, :cond_0

    .line 712
    iget-object v1, p0, Lcom/nianticproject/ingress/l/f;->s:Ljava/util/EnumMap;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 713
    :try_start_1
    iget-object v0, p0, Lcom/nianticproject/ingress/l/f;->s:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 714
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 744
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 745
    :goto_0
    return-void

    .line 714
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 744
    :catchall_1
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0

    .line 718
    :cond_0
    :try_start_3
    invoke-virtual {p2}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-nez v0, :cond_1

    .line 719
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/location/Location;->setAccuracy(F)V

    .line 722
    :cond_1
    iget-object v11, p0, Lcom/nianticproject/ingress/l/f;->s:Ljava/util/EnumMap;

    monitor-enter v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 723
    :try_start_4
    iget-object v0, p0, Lcom/nianticproject/ingress/l/f;->s:Ljava/util/EnumMap;

    invoke-static {p1}, Lcom/nianticproject/ingress/l/y;->a(Ljava/lang/String;)Lcom/nianticproject/ingress/l/y;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 734
    iget-object v0, p0, Lcom/nianticproject/ingress/l/f;->t:Ljava/util/EnumMap;

    invoke-static {p1}, Lcom/nianticproject/ingress/l/y;->a(Ljava/lang/String;)Lcom/nianticproject/ingress/l/y;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/x;

    .line 735
    if-nez v0, :cond_2

    .line 736
    new-instance v0, Lcom/nianticproject/ingress/common/x;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/x;-><init>()V

    .line 737
    iget-object v1, p0, Lcom/nianticproject/ingress/l/f;->t:Ljava/util/EnumMap;

    invoke-static {p1}, Lcom/nianticproject/ingress/l/y;->a(Ljava/lang/String;)Lcom/nianticproject/ingress/l/y;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 739
    :cond_2
    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {p2}, Landroid/location/Location;->getAccuracy()F

    move-result v5

    float-to-double v5, v5

    invoke-virtual {p2}, Landroid/location/Location;->getAltitude()D

    move-result-wide v7

    invoke-virtual {p2}, Landroid/location/Location;->getTime()J

    move-result-wide v9

    invoke-virtual/range {v0 .. v10}, Lcom/nianticproject/ingress/common/x;->a(DDDDJ)V

    .line 742
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 744
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    goto :goto_0

    .line 742
    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v11

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
.end method

.method static synthetic b(Lcom/nianticproject/ingress/l/f;)Ljava/util/EnumMap;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/nianticproject/ingress/l/f;->s:Ljava/util/EnumMap;

    return-object v0
.end method

.method static synthetic b(Lcom/nianticproject/ingress/l/f;Landroid/location/Location;)V
    .locals 13
    .parameter
    .parameter

    .prologue
    .line 62
    :try_start_0
    const-string/jumbo v0, "LocationTracker.handleLocationUpdate"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    sget-boolean v1, Lcom/nianticproject/ingress/l/f;->d:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    :cond_0
    invoke-static {p1}, Lcom/nianticproject/ingress/l/y;->a(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p1, v12}, Landroid/location/Location;->setProvider(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/nianticproject/ingress/l/f;->x:Z

    if-nez v0, :cond_1

    const v0, 0x47c34f80

    invoke-virtual {p1, v0}, Landroid/location/Location;->setAccuracy(F)V

    :cond_1
    sget-boolean v0, Lcom/nianticproject/ingress/l/f;->d:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/nianticproject/ingress/l/f;->l:Lcom/nianticproject/ingress/common/w/aa;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Received location update "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    sget-object v0, Lcom/nianticproject/ingress/l/f;->l:Lcom/nianticproject/ingress/common/w/aa;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "LocUpdate: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/nianticproject/ingress/l/f;->a(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    sget-object v0, Lcom/nianticproject/ingress/l/f;->g:Lcom/nianticproject/ingress/l/d;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/nianticproject/ingress/l/f;->g:Lcom/nianticproject/ingress/l/d;

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v8

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v10

    float-to-double v10, v10

    invoke-virtual/range {v0 .. v11}, Lcom/nianticproject/ingress/l/d;->a(Ljava/lang/String;JDDDD)V

    :cond_2
    const-string/jumbo v0, "gps"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/nianticproject/ingress/l/f;->l:Lcom/nianticproject/ingress/common/w/aa;

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/nianticproject/ingress/l/f;->a(J)Ljava/lang/String;

    :cond_3
    invoke-direct {p0, v12, p1}, Lcom/nianticproject/ingress/l/f;->a(Ljava/lang/String;Landroid/location/Location;)V

    invoke-direct {p0}, Lcom/nianticproject/ingress/l/f;->g()V

    invoke-direct {p0}, Lcom/nianticproject/ingress/l/f;->h()Lcom/google/a/a/ak;

    move-result-object v3

    iget-object v0, v3, Lcom/google/a/a/ak;->a:Ljava/lang/Object;

    check-cast v0, Landroid/location/Location;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    :goto_0
    return-void

    :cond_4
    :try_start_1
    iget-object v1, p0, Lcom/nianticproject/ingress/l/f;->v:Landroid/location/Location;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/nianticproject/ingress/l/f;->v:Landroid/location/Location;

    if-eq v1, v0, :cond_9

    :cond_5
    sget v1, Lcom/nianticproject/ingress/l/f;->e:I

    int-to-float v1, v1

    sget v2, Lcom/nianticproject/ingress/l/f;->f:I

    int-to-long v4, v2

    iget-object v2, p0, Lcom/nianticproject/ingress/l/f;->v:Landroid/location/Location;

    if-eqz v2, :cond_a

    iget-object v1, p0, Lcom/nianticproject/ingress/l/f;->v:Landroid/location/Location;

    invoke-virtual {v0, v1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v1

    move v2, v1

    :goto_1
    sget-boolean v1, Lcom/nianticproject/ingress/l/f;->d:Z

    if-eqz v1, :cond_7

    sget-object v1, Lcom/nianticproject/ingress/l/f;->l:Lcom/nianticproject/ingress/common/w/aa;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "LocNotify: "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/nianticproject/ingress/l/f;->a(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, ", "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, "m"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/high16 v1, 0x4120

    cmpl-float v1, v2, v1

    if-lez v1, :cond_6

    sget-object v1, Lcom/nianticproject/ingress/l/f;->l:Lcom/nianticproject/ingress/common/w/aa;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "  BIG JUMP from: "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/nianticproject/ingress/l/f;->v:Landroid/location/Location;

    invoke-virtual {v6}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    sget-object v1, Lcom/nianticproject/ingress/l/f;->l:Lcom/nianticproject/ingress/common/w/aa;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "             to: "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_6
    iget-object v1, p0, Lcom/nianticproject/ingress/l/f;->s:Ljava/util/EnumMap;

    invoke-virtual {v1}, Ljava/util/EnumMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    sget-object v7, Lcom/nianticproject/ingress/l/f;->l:Lcom/nianticproject/ingress/common/w/aa;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "  "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Location;

    invoke-static {v1}, Lcom/nianticproject/ingress/l/f;->a(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0

    :cond_7
    :try_start_2
    sget v1, Lcom/nianticproject/ingress/l/f;->e:I

    int-to-float v1, v1

    cmpl-float v1, v2, v1

    if-gez v1, :cond_8

    sget v1, Lcom/nianticproject/ingress/l/f;->f:I

    int-to-long v1, v1

    cmp-long v1, v4, v1

    if-ltz v1, :cond_9

    :cond_8
    iget-object v1, v3, Lcom/google/a/a/ak;->b:Ljava/lang/Object;

    check-cast v1, Lcom/nianticproject/ingress/common/u/av;

    invoke-direct {p0, v0, v1}, Lcom/nianticproject/ingress/l/f;->a(Landroid/location/Location;Lcom/nianticproject/ingress/common/u/av;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_9
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    goto/16 :goto_0

    :cond_a
    move v2, v1

    goto/16 :goto_1
.end method

.method static synthetic c(Lcom/nianticproject/ingress/l/f;)Lcom/nianticproject/ingress/l/ai;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/nianticproject/ingress/l/f;->p:Lcom/nianticproject/ingress/l/ai;

    return-object v0
.end method

.method static synthetic d(Lcom/nianticproject/ingress/l/f;)Landroid/location/LocationManager;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/nianticproject/ingress/l/f;->o:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic e(Lcom/nianticproject/ingress/l/f;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 62
    :try_start_0
    const-string/jumbo v0, "LocationTracker.onResume"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/nianticproject/ingress/l/f;->q:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/nianticproject/ingress/l/f;->q:Z

    iget-object v0, p0, Lcom/nianticproject/ingress/l/f;->w:Landroid/database/ContentObserver;

    if-nez v0, :cond_1

    new-instance v0, Lcom/nianticproject/ingress/l/o;

    iget-object v1, p0, Lcom/nianticproject/ingress/l/f;->p:Lcom/nianticproject/ingress/l/ai;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/l/ai;->a()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/nianticproject/ingress/l/o;-><init>(Lcom/nianticproject/ingress/l/f;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/l/f;->w:Landroid/database/ContentObserver;

    :cond_1
    invoke-direct {p0}, Lcom/nianticproject/ingress/l/f;->i()V

    const-string/jumbo v0, "mock_location"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/l/f;->n:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/nianticproject/ingress/l/f;->w:Landroid/database/ContentObserver;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/nianticproject/ingress/l/f;->o:Landroid/location/LocationManager;

    const-string/jumbo v1, "gps"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/nianticproject/ingress/l/f;->y:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    iget-object v0, p0, Lcom/nianticproject/ingress/l/f;->o:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/nianticproject/ingress/l/f;->z:Landroid/location/GpsStatus$Listener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    :try_start_3
    iget-object v0, p0, Lcom/nianticproject/ingress/l/f;->o:Landroid/location/LocationManager;

    const-string/jumbo v1, "network"

    const-wide/16 v2, 0x1388

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/nianticproject/ingress/l/f;->A:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_2
    :try_start_4
    iget-object v1, p0, Lcom/nianticproject/ingress/l/f;->C:Lcom/nianticproject/ingress/l/s;

    iget-object v0, v1, Lcom/nianticproject/ingress/l/s;->a:Lcom/google/android/gms/location/c;

    if-nez v0, :cond_2

    move v0, v6

    :goto_3
    const-string/jumbo v2, "Attempt to start location client with one already started."

    invoke-static {v0, v2}, Lcom/google/a/a/an;->b(ZLjava/lang/Object;)V

    iget-object v0, v1, Lcom/nianticproject/ingress/l/s;->c:Lcom/nianticproject/ingress/l/f;

    iget-object v0, v0, Lcom/nianticproject/ingress/l/f;->n:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/f;->a(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lcom/google/android/gms/location/c;

    iget-object v2, v1, Lcom/nianticproject/ingress/l/s;->c:Lcom/nianticproject/ingress/l/f;

    iget-object v2, v2, Lcom/nianticproject/ingress/l/f;->n:Landroid/content/Context;

    invoke-direct {v0, v2, v1, v1}, Lcom/google/android/gms/location/c;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/c;Lcom/google/android/gms/common/d;)V

    iput-object v0, v1, Lcom/nianticproject/ingress/l/s;->a:Lcom/google/android/gms/location/c;

    iget-object v0, v1, Lcom/nianticproject/ingress/l/s;->a:Lcom/google/android/gms/location/c;

    invoke-virtual {v0}, Lcom/google/android/gms/location/c;->b()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_4
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_5
    sget-object v1, Lcom/nianticproject/ingress/l/f;->l:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v2, "could not request GPS updates"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/nianticproject/ingress/common/w/aa;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0

    :catch_1
    move-exception v0

    :try_start_6
    sget-object v1, Lcom/nianticproject/ingress/l/f;->l:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v2, "not permitted access to the GPS for updates"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/nianticproject/ingress/common/w/aa;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :catch_2
    move-exception v0

    sget-object v1, Lcom/nianticproject/ingress/l/f;->l:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v2, "could not register for NLP updates"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/nianticproject/ingress/common/w/aa;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :catch_3
    move-exception v0

    sget-object v1, Lcom/nianticproject/ingress/l/f;->l:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v2, "not permitted access to the NLP for updates"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/nianticproject/ingress/common/w/aa;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    move v0, v7

    goto :goto_3

    :cond_3
    sget-object v1, Lcom/nianticproject/ingress/l/f;->l:Lcom/nianticproject/ingress/common/w/aa;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4
.end method

.method static synthetic f()Lcom/nianticproject/ingress/common/w/aa;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/nianticproject/ingress/l/f;->l:Lcom/nianticproject/ingress/common/w/aa;

    return-object v0
.end method

.method static synthetic f(Lcom/nianticproject/ingress/l/f;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/nianticproject/ingress/l/f;->i()V

    return-void
.end method

.method private g()V
    .locals 9

    .prologue
    .line 750
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 751
    iget-object v3, p0, Lcom/nianticproject/ingress/l/f;->s:Ljava/util/EnumMap;

    monitor-enter v3

    .line 752
    :try_start_0
    iget-object v0, p0, Lcom/nianticproject/ingress/l/f;->s:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 753
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 754
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 755
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    .line 756
    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v5

    const-wide/32 v7, 0xafc80

    add-long/2addr v5, v7

    cmp-long v0, v5, v1

    if-gez v0, :cond_0

    .line 757
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 760
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private h()Lcom/google/a/a/ak;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/a/ak",
            "<",
            "Landroid/location/Location;",
            "Lcom/nianticproject/ingress/common/u/av;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 827
    :try_start_0
    const-string/jumbo v0, "LocationTracker.getBestLocation"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 830
    sget-object v0, Lcom/nianticproject/ingress/l/f;->k:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 832
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 833
    iget-object v1, p0, Lcom/nianticproject/ingress/l/f;->s:Ljava/util/EnumMap;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 834
    :try_start_1
    iget-object v2, p0, Lcom/nianticproject/ingress/l/f;->s:Ljava/util/EnumMap;

    invoke-virtual {v2}, Ljava/util/EnumMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 835
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 847
    :try_start_2
    sget-boolean v1, Lcom/nianticproject/ingress/l/f;->c:Z

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lcom/nianticproject/ingress/l/f;->h:Z

    if-eqz v1, :cond_8

    invoke-static {}, Lcom/nianticproject/ingress/common/q;->f()Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->c()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-static {}, Lcom/nianticproject/ingress/common/q;->f()Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->b()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 853
    iget-object v1, p0, Lcom/nianticproject/ingress/l/f;->B:Lcom/nianticproject/ingress/l/ae;

    iget-object v2, p0, Lcom/nianticproject/ingress/l/f;->u:Landroid/location/GpsStatus;

    invoke-virtual {v1, v0, v2}, Lcom/nianticproject/ingress/l/ae;->a(Ljava/util/Collection;Landroid/location/GpsStatus;)Landroid/location/Location;

    move-result-object v4

    .line 856
    :goto_0
    if-nez v4, :cond_6

    .line 858
    iget-object v7, p0, Lcom/nianticproject/ingress/l/f;->s:Ljava/util/EnumMap;

    monitor-enter v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 859
    :try_start_3
    iget-object v1, p0, Lcom/nianticproject/ingress/l/f;->s:Ljava/util/EnumMap;

    invoke-virtual {v1}, Ljava/util/EnumMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 860
    invoke-static {}, Lcom/nianticproject/ingress/common/q;->f()Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->c()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/nianticproject/ingress/l/y;->a:Lcom/nianticproject/ingress/l/y;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v9

    if-eq v2, v9, :cond_1

    :cond_0
    move v2, v5

    .line 863
    :goto_2
    if-eqz v2, :cond_7

    if-eqz v1, :cond_4

    if-nez v3, :cond_2

    move v2, v5

    :goto_3
    if-eqz v2, :cond_7

    :goto_4
    move-object v3, v1

    .line 866
    goto :goto_1

    .line 835
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 875
    :catchall_1
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0

    :cond_1
    move v2, v6

    .line 860
    goto :goto_2

    .line 863
    :cond_2
    :try_start_5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v9

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v11

    const-wide/16 v13, 0x32c8

    add-long/2addr v11, v13

    cmp-long v2, v9, v11

    if-lez v2, :cond_3

    move v2, v5

    goto :goto_3

    :cond_3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nianticproject/ingress/l/y;

    invoke-virtual {v2}, Lcom/nianticproject/ingress/l/y;->ordinal()I

    move-result v9

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nianticproject/ingress/l/y;

    invoke-virtual {v2}, Lcom/nianticproject/ingress/l/y;->ordinal()I

    move-result v2

    if-ge v9, v2, :cond_4

    move v2, v5

    goto :goto_3

    :cond_4
    move v2, v6

    goto :goto_3

    .line 867
    :cond_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 868
    if-eqz v3, :cond_6

    .line 869
    :try_start_6
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Location;

    .line 873
    :goto_5
    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/l/f;->a(Ljava/util/List;)Lcom/nianticproject/ingress/common/u/av;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/a/a/ak;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/a/ak;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v0

    .line 875
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    return-object v0

    .line 867
    :catchall_2
    move-exception v0

    :try_start_7
    monitor-exit v7

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_6
    move-object v1, v4

    goto :goto_5

    :cond_7
    move-object v1, v3

    goto :goto_4

    :cond_8
    move-object v4, v3

    goto/16 :goto_0
.end method

.method private i()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 913
    sget-object v2, Lcom/nianticproject/ingress/o/a/a;->a:Lcom/nianticproject/ingress/o/a/a;

    invoke-virtual {v2}, Lcom/nianticproject/ingress/o/a/a;->a()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/nianticproject/ingress/common/g/p;->a()Lcom/nianticproject/ingress/common/g/p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nianticproject/ingress/common/g/p;->G()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/nianticproject/ingress/ec;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 915
    :cond_0
    iput-boolean v0, p0, Lcom/nianticproject/ingress/l/f;->x:Z

    .line 928
    :goto_0
    return-void

    .line 921
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/nianticproject/ingress/l/f;->n:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "mock_location"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 927
    :goto_1
    if-nez v2, :cond_2

    :goto_2
    iput-boolean v0, p0, Lcom/nianticproject/ingress/l/f;->x:Z

    goto :goto_0

    .line 924
    :catch_0
    move-exception v2

    move v2, v1

    goto :goto_1

    :cond_2
    move v0, v1

    .line 927
    goto :goto_2
.end method


# virtual methods
.method public final a()Lcom/nianticproject/ingress/l/ab;
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/nianticproject/ingress/l/f;->B:Lcom/nianticproject/ingress/l/ae;

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/nianticproject/ingress/l/f;->B:Lcom/nianticproject/ingress/l/ae;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/l/ae;->a()Lcom/nianticproject/ingress/l/ab;

    move-result-object v0

    .line 468
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/nianticproject/ingress/l/t;)V
    .locals 4
    .parameter

    .prologue
    .line 504
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 505
    if-nez v0, :cond_0

    .line 506
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 509
    :cond_0
    iget-object v1, p0, Lcom/nianticproject/ingress/l/f;->r:Ljava/util/WeakHashMap;

    monitor-enter v1

    .line 510
    :try_start_0
    iget-object v2, p0, Lcom/nianticproject/ingress/l/f;->r:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 511
    iget-object v2, p0, Lcom/nianticproject/ingress/l/f;->r:Ljava/util/WeakHashMap;

    new-instance v3, Lcom/nianticproject/ingress/l/q;

    invoke-direct {v3, p0, p1, v0}, Lcom/nianticproject/ingress/l/q;-><init>(Lcom/nianticproject/ingress/l/f;Lcom/nianticproject/ingress/l/t;Landroid/os/Looper;)V

    invoke-virtual {v2, p1, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 1056
    iput-boolean p1, p0, Lcom/nianticproject/ingress/l/f;->h:Z

    .line 1057
    return-void
.end method

.method public final b()Landroid/location/Location;
    .locals 2

    .prologue
    .line 531
    iget-object v0, p0, Lcom/nianticproject/ingress/l/f;->v:Landroid/location/Location;

    if-eqz v0, :cond_0

    .line 532
    iget-object v0, p0, Lcom/nianticproject/ingress/l/f;->v:Landroid/location/Location;

    .line 536
    :goto_0
    return-object v0

    .line 535
    :cond_0
    invoke-direct {p0}, Lcom/nianticproject/ingress/l/f;->h()Lcom/google/a/a/ak;

    move-result-object v0

    iget-object v0, v0, Lcom/google/a/a/ak;->a:Ljava/lang/Object;

    check-cast v0, Landroid/location/Location;

    .line 536
    if-eqz v0, :cond_1

    new-instance v1, Landroid/location/Location;

    invoke-direct {v1, v0}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Landroid/location/Location;
    .locals 1

    .prologue
    .line 544
    iget-object v0, p0, Lcom/nianticproject/ingress/l/f;->v:Landroid/location/Location;

    return-object v0
.end method

.method public final d()V
    .locals 6

    .prologue
    const v5, 0x47c34f80

    const/4 v1, 0x1

    .line 551
    invoke-static {}, Lcom/nianticproject/ingress/ec;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 552
    sget-object v0, Lcom/nianticproject/ingress/o/a/a;->d:Lcom/nianticproject/ingress/o/a/a;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/o/a/a;->a()Z

    move-result v0

    sput-boolean v0, Lcom/nianticproject/ingress/l/f;->d:Z

    .line 553
    sget-object v0, Lcom/nianticproject/ingress/l/f;->g:Lcom/nianticproject/ingress/l/d;

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/nianticproject/ingress/l/f;->d:Z

    if-eqz v0, :cond_0

    .line 554
    invoke-static {}, Lcom/nianticproject/ingress/l/d;->a()Lcom/nianticproject/ingress/l/d;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/ingress/l/f;->g:Lcom/nianticproject/ingress/l/d;

    .line 557
    :cond_0
    sget-object v0, Lcom/nianticproject/ingress/o/a/a;->e:Lcom/nianticproject/ingress/o/a/a;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/o/a/a;->b()I

    move-result v0

    sput v0, Lcom/nianticproject/ingress/l/f;->e:I

    .line 558
    sget-object v0, Lcom/nianticproject/ingress/o/a/a;->f:Lcom/nianticproject/ingress/o/a/a;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/o/a/a;->b()I

    move-result v0

    sput v0, Lcom/nianticproject/ingress/l/f;->f:I

    .line 568
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/l/f;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 569
    iget-object v2, p0, Lcom/nianticproject/ingress/l/f;->i:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v2

    .line 570
    :try_start_0
    iget-object v0, p0, Lcom/nianticproject/ingress/l/f;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/l/p;

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/nianticproject/ingress/l/p;->a:Z

    .line 571
    iget-object v0, p0, Lcom/nianticproject/ingress/l/f;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/l/p;

    iget-boolean v0, v0, Lcom/nianticproject/ingress/l/p;->b:Z

    .line 572
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 573
    iget-object v2, p0, Lcom/nianticproject/ingress/l/f;->i:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 575
    :goto_0
    if-eqz v0, :cond_5

    .line 577
    iget-object v2, p0, Lcom/nianticproject/ingress/l/f;->s:Ljava/util/EnumMap;

    monitor-enter v2

    .line 578
    :try_start_1
    iget-object v0, p0, Lcom/nianticproject/ingress/l/f;->s:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 579
    :goto_1
    if-nez v1, :cond_3

    .line 580
    iget-object v0, p0, Lcom/nianticproject/ingress/l/f;->s:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    .line 581
    const v4, 0x47c34f80

    invoke-virtual {v0, v4}, Landroid/location/Location;->setAccuracy(F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 589
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 572
    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0

    .line 578
    :cond_2
    const/4 v0, 0x0

    move v1, v0

    goto :goto_1

    .line 586
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/nianticproject/ingress/l/f;->t:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/x;

    .line 587
    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/x;->i()V

    goto :goto_3

    .line 589
    :cond_4
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 590
    if-eqz v1, :cond_5

    .line 591
    const-string/jumbo v0, "gps"

    iget-object v1, p0, Lcom/nianticproject/ingress/l/f;->o:Landroid/location/LocationManager;

    invoke-virtual {v1, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0, v5}, Landroid/location/Location;->setAccuracy(F)V

    invoke-static {v0}, Lcom/nianticproject/ingress/l/y;->a(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/nianticproject/ingress/l/f;->a(Ljava/lang/String;Landroid/location/Location;)V

    .line 595
    :cond_5
    iget-object v0, p0, Lcom/nianticproject/ingress/l/f;->p:Lcom/nianticproject/ingress/l/ai;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/l/ai;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/nianticproject/ingress/l/m;

    invoke-direct {v1, p0}, Lcom/nianticproject/ingress/l/m;-><init>(Lcom/nianticproject/ingress/l/f;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 601
    return-void

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method public final e()V
    .locals 4

    .prologue
    .line 608
    invoke-static {}, Lcom/nianticproject/ingress/common/q;->f()Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 609
    iget-object v0, p0, Lcom/nianticproject/ingress/l/f;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 610
    iget-object v0, p0, Lcom/nianticproject/ingress/l/f;->i:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/nianticproject/ingress/l/p;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/nianticproject/ingress/l/p;-><init>(Lcom/nianticproject/ingress/l/f;B)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 611
    iget-object v0, p0, Lcom/nianticproject/ingress/l/f;->p:Lcom/nianticproject/ingress/l/ai;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/l/ai;->a()Landroid/os/Handler;

    move-result-object v1

    iget-object v0, p0, Lcom/nianticproject/ingress/l/f;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    const-wide/32 v2, 0x1d4c0

    invoke-static {}, La;->u()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 621
    :cond_0
    :goto_0
    return-void

    .line 614
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/l/f;->p:Lcom/nianticproject/ingress/l/ai;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/l/ai;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/nianticproject/ingress/l/n;

    invoke-direct {v1, p0}, Lcom/nianticproject/ingress/l/n;-><init>(Lcom/nianticproject/ingress/l/f;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
