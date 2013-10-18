.class public final Lcom/google/android/gms/internal/ag;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ae;


# static fields
.field public static final a:Lcom/google/android/gms/internal/f;


# instance fields
.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/f;

    invoke-direct {v0}, Lcom/google/android/gms/internal/f;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ag;->a:Lcom/google/android/gms/internal/f;

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ag;->b:I

    iput p2, p0, Lcom/google/android/gms/internal/ag;->c:I

    iput p3, p0, Lcom/google/android/gms/internal/ag;->d:I

    iput-object p4, p0, Lcom/google/android/gms/internal/ag;->e:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/ag;->f:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/ag;->g:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/ag;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ag;->b:I

    return v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ag;->c:I

    return v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ag;->d:I

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ag;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ag;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/android/gms/internal/ag;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ag;

    iget v1, p0, Lcom/google/android/gms/internal/ag;->b:I

    iget v2, p1, Lcom/google/android/gms/internal/ag;->b:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/gms/internal/ag;->c:I

    iget v2, p1, Lcom/google/android/gms/internal/ag;->c:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/gms/internal/ag;->d:I

    iget v2, p1, Lcom/google/android/gms/internal/ag;->d:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ag;->e:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/ag;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ge;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ag;->f:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/ag;->f:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ge;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ag;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ag;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/internal/ag;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/ag;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/internal/ag;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/ag;->e:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/ag;->f:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget v0, p0, Lcom/google/android/gms/internal/ag;->c:I

    if-ne v0, v4, :cond_0

    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    const-string/jumbo v0, "Person [%s] %s"

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/gms/internal/ag;->f:Ljava/lang/String;

    aput-object v4, v3, v2

    iget-object v2, p0, Lcom/google/android/gms/internal/ag;->g:Ljava/lang/String;

    aput-object v2, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/ag;->c:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/ag;->d:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    move v0, v1

    :goto_2
    if-eqz v0, :cond_3

    const-string/jumbo v0, "Circle [%s] %s"

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/gms/internal/ag;->e:Ljava/lang/String;

    aput-object v4, v3, v2

    iget-object v2, p0, Lcom/google/android/gms/internal/ag;->g:Ljava/lang/String;

    aput-object v2, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    const-string/jumbo v0, "Group [%s] %s"

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/gms/internal/ag;->e:Ljava/lang/String;

    aput-object v4, v3, v2

    iget-object v2, p0, Lcom/google/android/gms/internal/ag;->g:Ljava/lang/String;

    aput-object v2, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/f;->a(Lcom/google/android/gms/internal/ag;Landroid/os/Parcel;)V

    return-void
.end method
