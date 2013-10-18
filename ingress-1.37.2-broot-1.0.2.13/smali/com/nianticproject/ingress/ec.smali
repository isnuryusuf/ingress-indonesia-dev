.class public Lcom/nianticproject/ingress/ec;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/nianticproject/ingress/ec;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".UPDATE_UI"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/ingress/ec;->a:Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/nianticproject/ingress/ec;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".NOTIFIED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/ingress/ec;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .locals 3
    .parameter

    .prologue
    .line 151
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    return v0
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/nianticproject/ingress/o/a/b;->b:Lcom/nianticproject/ingress/o/a/b;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/o/a/b;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const v2, 0x7f020094

    const/4 v5, 0x1

    .line 212
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 213
    if-nez v0, :cond_0

    .line 214
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 215
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v1, v0

    .line 221
    :goto_0
    if-eqz p2, :cond_1

    .line 222
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v0, v2, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 227
    :goto_1
    new-instance v2, Landroid/graphics/drawable/TransitionDrawable;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    aput-object v0, v3, v5

    invoke-direct {v2, v3}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 228
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 229
    invoke-virtual {v2, v5}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 230
    const/16 v0, 0x1f4

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 231
    return-void

    .line 216
    :cond_0
    instance-of v1, v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v1, :cond_2

    .line 217
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/TransitionDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 224
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 136
    invoke-static {}, Lcom/nianticproject/ingress/ec;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " may only be called from the UI thread"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 197
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 199
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()Landroid/location/Location;
    .locals 10

    .prologue
    const-wide v8, 0x412e848000000000L

    .line 81
    invoke-static {}, Lcom/nianticproject/ingress/common/s/c;->f()Lcom/nianticproject/ingress/common/y;

    move-result-object v1

    .line 82
    iget-wide v2, v1, Lcom/nianticproject/ingress/common/y;->e:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 83
    const/4 v0, 0x0

    .line 90
    :goto_0
    return-object v0

    .line 85
    :cond_0
    iget-object v2, v1, Lcom/nianticproject/ingress/common/y;->a:Ljava/lang/String;

    iget v0, v1, Lcom/nianticproject/ingress/common/y;->b:I

    iget v3, v1, Lcom/nianticproject/ingress/common/y;->c:I

    int-to-double v4, v0

    div-double/2addr v4, v8

    int-to-double v6, v3

    div-double/2addr v6, v8

    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, v2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4, v5}, Landroid/location/Location;->setLatitude(D)V

    invoke-virtual {v0, v6, v7}, Landroid/location/Location;->setLongitude(D)V

    .line 88
    iget v2, v1, Lcom/nianticproject/ingress/common/y;->d:F

    invoke-virtual {v0, v2}, Landroid/location/Location;->setAccuracy(F)V

    .line 89
    iget-wide v1, v1, Lcom/nianticproject/ingress/common/y;->e:J

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setTime(J)V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "v"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/nianticproject/ingress/ec;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " 2013-10-07T21:02:13Z a7cb9f5402e7 opt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final c()Z
    .locals 2

    .prologue
    .line 98
    sget-object v0, Lcom/nianticproject/ingress/shared/ag;->a:Lcom/nianticproject/ingress/shared/ah;

    sget-object v1, Lcom/nianticproject/ingress/shared/ah;->c:Lcom/nianticproject/ingress/shared/ah;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/nianticproject/ingress/shared/ag;->a:Lcom/nianticproject/ingress/shared/ah;

    sget-object v1, Lcom/nianticproject/ingress/shared/ah;->b:Lcom/nianticproject/ingress/shared/ah;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final d()Z
    .locals 2

    .prologue
    .line 105
    sget-object v0, Lcom/nianticproject/ingress/shared/ag;->a:Lcom/nianticproject/ingress/shared/ah;

    sget-object v1, Lcom/nianticproject/ingress/shared/ah;->a:Lcom/nianticproject/ingress/shared/ah;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final e()Z
    .locals 2

    .prologue
    .line 119
    sget-object v0, Lcom/nianticproject/ingress/o/a/b;->b:Lcom/nianticproject/ingress/o/a/b;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/o/a/b;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "betaspike"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static f()Z
    .locals 2

    .prologue
    .line 126
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    const-class v0, Lcom/nianticproject/ingress/ec;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
