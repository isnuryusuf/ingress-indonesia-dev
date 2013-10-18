.class public final Lcom/google/android/gms/internal/ds;
.super Landroid/widget/ImageView;

# interfaces
.implements Lcom/google/android/gms/common/c;
.implements Lcom/google/android/gms/plus/b;


# instance fields
.field private a:I

.field private b:Landroid/net/Uri;

.field private c:Z

.field private d:Z

.field private e:Landroid/graphics/Bitmap;

.field private f:Lcom/google/android/gms/plus/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 8

    const-wide/high16 v6, 0x3fe0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-double v2, v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-double v4, v0

    cmpl-double v0, v2, v4

    if-lez v0, :cond_0

    int-to-double v0, p1

    div-double/2addr v0, v2

    :goto_0
    mul-double/2addr v2, v0

    add-double/2addr v2, v6

    double-to-int v2, v2

    mul-double/2addr v0, v4

    add-double/2addr v0, v6

    double-to-int v0, v0

    const/4 v1, 0x1

    invoke-static {p0, v2, v0, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_0
    int-to-double v0, p1

    div-double/2addr v0, v4

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ds;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ds;->e:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ds;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ds;->c:Z

    return v0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ds;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ds;->e:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private c()V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/ds;->b:Landroid/net/Uri;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "android.resource"

    iget-object v2, p0, Lcom/google/android/gms/internal/ds;->b:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ds;->d:Z

    if-nez v2, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/ds;->b:Landroid/net/Uri;

    if-nez v2, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ds;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_3
    if-nez v0, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/ds;->f:Lcom/google/android/gms/plus/a;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ds;->f:Lcom/google/android/gms/plus/a;

    invoke-virtual {v2}, Lcom/google/android/gms/plus/a;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/ds;->b:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ds;->setImageURI(Landroid/net/Uri;)V

    :goto_2
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ds;->d:Z

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ds;->f:Lcom/google/android/gms/plus/a;

    iget-object v2, p0, Lcom/google/android/gms/internal/ds;->b:Landroid/net/Uri;

    iget v3, p0, Lcom/google/android/gms/internal/ds;->a:I

    invoke-virtual {v0, p0, v2, v3}, Lcom/google/android/gms/plus/a;->a(Lcom/google/android/gms/plus/b;Landroid/net/Uri;I)V

    goto :goto_2
.end method


# virtual methods
.method public final a()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ds;->c()V

    return-void
.end method

.method public final a(Landroid/net/Uri;I)V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/google/android/gms/internal/ds;->b:Landroid/net/Uri;

    if-nez v0, :cond_2

    if-nez p1, :cond_1

    move v0, v1

    :goto_0
    iget v3, p0, Lcom/google/android/gms/internal/ds;->a:I

    if-ne v3, p2, :cond_0

    move v2, v1

    :cond_0
    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    :goto_1
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ds;->b:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_3
    iput-object p1, p0, Lcom/google/android/gms/internal/ds;->b:Landroid/net/Uri;

    iput p2, p0, Lcom/google/android/gms/internal/ds;->a:I

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ds;->d:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ds;->c()V

    goto :goto_1
.end method

.method public final a(Lcom/google/android/gms/common/a;Landroid/os/ParcelFileDescriptor;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/google/android/gms/common/a;->a()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ds;->d:Z

    if-eqz p2, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/dt;

    iget v1, p0, Lcom/google/android/gms/internal/ds;->a:I

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/dt;-><init>(Lcom/google/android/gms/internal/ds;I)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/os/ParcelFileDescriptor;

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/dt;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method protected final onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ds;->c:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ds;->f:Lcom/google/android/gms/plus/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ds;->f:Lcom/google/android/gms/plus/a;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/plus/a;->b(Lcom/google/android/gms/common/c;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ds;->f:Lcom/google/android/gms/plus/a;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/plus/a;->a(Lcom/google/android/gms/common/c;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ds;->e:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ds;->e:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ds;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    return-void
.end method

.method protected final onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ds;->c:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ds;->f:Lcom/google/android/gms/plus/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ds;->f:Lcom/google/android/gms/plus/a;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/plus/a;->b(Lcom/google/android/gms/common/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ds;->f:Lcom/google/android/gms/plus/a;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/plus/a;->c(Lcom/google/android/gms/common/c;)V

    :cond_0
    return-void
.end method
