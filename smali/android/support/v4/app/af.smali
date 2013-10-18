.class public final Landroid/support/v4/app/af;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Landroid/content/Context;

.field b:Ljava/lang/CharSequence;

.field c:Ljava/lang/CharSequence;

.field d:Landroid/app/PendingIntent;

.field e:Landroid/app/PendingIntent;

.field f:Landroid/widget/RemoteViews;

.field g:Landroid/graphics/Bitmap;

.field h:Ljava/lang/CharSequence;

.field i:I

.field j:I

.field k:Z

.field l:Landroid/support/v4/app/am;

.field m:Ljava/lang/CharSequence;

.field n:I

.field o:I

.field p:Z

.field q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/ac;",
            ">;"
        }
    .end annotation
.end field

.field r:Landroid/app/Notification;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/af;->q:Ljava/util/ArrayList;

    .line 182
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/af;->r:Landroid/app/Notification;

    .line 196
    iput-object p1, p0, Landroid/support/v4/app/af;->a:Landroid/content/Context;

    .line 199
    iget-object v0, p0, Landroid/support/v4/app/af;->r:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/Notification;->when:J

    .line 200
    iget-object v0, p0, Landroid/support/v4/app/af;->r:Landroid/app/Notification;

    const/4 v1, -0x1

    iput v1, v0, Landroid/app/Notification;->audioStreamType:I

    .line 201
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/app/af;->j:I

    .line 202
    return-void
.end method

.method private a(IZ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 494
    if-eqz p2, :cond_0

    .line 495
    iget-object v0, p0, Landroid/support/v4/app/af;->r:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/2addr v1, p1

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 499
    :goto_0
    return-void

    .line 497
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/af;->r:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    xor-int/lit8 v2, p1, -0x1

    and-int/2addr v1, v2

    iput v1, v0, Landroid/app/Notification;->flags:I

    goto :goto_0
.end method


# virtual methods
.method public final a()Landroid/support/v4/app/af;
    .locals 2

    .prologue
    .line 471
    const/16 v0, 0x10

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/support/v4/app/af;->a(IZ)V

    .line 472
    return-object p0
.end method

.method public final a(I)Landroid/support/v4/app/af;
    .locals 1
    .parameter

    .prologue
    .line 237
    iget-object v0, p0, Landroid/support/v4/app/af;->r:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->icon:I

    .line 238
    return-object p0
.end method

.method public final a(J)Landroid/support/v4/app/af;
    .locals 1
    .parameter

    .prologue
    .line 209
    iget-object v0, p0, Landroid/support/v4/app/af;->r:Landroid/app/Notification;

    iput-wide p1, v0, Landroid/app/Notification;->when:J

    .line 210
    return-object p0
.end method

.method public final a(Landroid/app/PendingIntent;)Landroid/support/v4/app/af;
    .locals 0
    .parameter

    .prologue
    .line 329
    iput-object p1, p0, Landroid/support/v4/app/af;->d:Landroid/app/PendingIntent;

    .line 330
    return-object p0
.end method

.method public final a(Landroid/graphics/Bitmap;)Landroid/support/v4/app/af;
    .locals 0
    .parameter

    .prologue
    .line 388
    iput-object p1, p0, Landroid/support/v4/app/af;->g:Landroid/graphics/Bitmap;

    .line 389
    return-object p0
.end method

.method public final a(Landroid/net/Uri;)Landroid/support/v4/app/af;
    .locals 2
    .parameter

    .prologue
    .line 396
    iget-object v0, p0, Landroid/support/v4/app/af;->r:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 397
    iget-object v0, p0, Landroid/support/v4/app/af;->r:Landroid/app/Notification;

    const/4 v1, -0x1

    iput v1, v0, Landroid/app/Notification;->audioStreamType:I

    .line 398
    return-object p0
.end method

.method public final a(Landroid/support/v4/app/am;)Landroid/support/v4/app/af;
    .locals 2
    .parameter

    .prologue
    .line 536
    iget-object v0, p0, Landroid/support/v4/app/af;->l:Landroid/support/v4/app/am;

    if-eq v0, p1, :cond_0

    .line 537
    iput-object p1, p0, Landroid/support/v4/app/af;->l:Landroid/support/v4/app/am;

    .line 538
    iget-object v0, p0, Landroid/support/v4/app/af;->l:Landroid/support/v4/app/am;

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Landroid/support/v4/app/af;->l:Landroid/support/v4/app/am;

    iget-object v1, v0, Landroid/support/v4/app/am;->b:Landroid/support/v4/app/af;

    if-eq v1, p0, :cond_0

    iput-object p0, v0, Landroid/support/v4/app/am;->b:Landroid/support/v4/app/af;

    iget-object v1, v0, Landroid/support/v4/app/am;->b:Landroid/support/v4/app/af;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/support/v4/app/am;->b:Landroid/support/v4/app/af;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/af;->a(Landroid/support/v4/app/am;)Landroid/support/v4/app/af;

    .line 542
    :cond_0
    return-object p0
.end method

.method public final a(Ljava/lang/CharSequence;)Landroid/support/v4/app/af;
    .locals 0
    .parameter

    .prologue
    .line 261
    iput-object p1, p0, Landroid/support/v4/app/af;->b:Ljava/lang/CharSequence;

    .line 262
    return-object p0
.end method

.method public final a(Z)Landroid/support/v4/app/af;
    .locals 1
    .parameter

    .prologue
    .line 460
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Landroid/support/v4/app/af;->a(IZ)V

    .line 461
    return-object p0
.end method

.method public final b()Landroid/support/v4/app/af;
    .locals 1

    .prologue
    .line 513
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v4/app/af;->j:I

    .line 514
    return-object p0
.end method

.method public final b(I)Landroid/support/v4/app/af;
    .locals 2
    .parameter

    .prologue
    .line 486
    iget-object v0, p0, Landroid/support/v4/app/af;->r:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->defaults:I

    .line 487
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Landroid/support/v4/app/af;->r:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 490
    :cond_0
    return-object p0
.end method

.method public final b(Landroid/app/PendingIntent;)Landroid/support/v4/app/af;
    .locals 1
    .parameter

    .prologue
    .line 341
    iget-object v0, p0, Landroid/support/v4/app/af;->r:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 342
    return-object p0
.end method

.method public final b(Ljava/lang/CharSequence;)Landroid/support/v4/app/af;
    .locals 0
    .parameter

    .prologue
    .line 269
    iput-object p1, p0, Landroid/support/v4/app/af;->c:Ljava/lang/CharSequence;

    .line 270
    return-object p0
.end method

.method public final c()Landroid/app/Notification;
    .locals 1

    .prologue
    .line 558
    invoke-static {}, Landroid/support/v4/app/ab;->a()Landroid/support/v4/app/ah;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/support/v4/app/ah;->a(Landroid/support/v4/app/af;)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/CharSequence;)Landroid/support/v4/app/af;
    .locals 0
    .parameter

    .prologue
    .line 297
    iput-object p1, p0, Landroid/support/v4/app/af;->h:Ljava/lang/CharSequence;

    .line 298
    return-object p0
.end method
