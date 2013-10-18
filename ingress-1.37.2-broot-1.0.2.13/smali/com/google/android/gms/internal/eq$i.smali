.class public final Lcom/google/android/gms/internal/eq$i;
.super Lcom/google/android/gms/internal/an;

# interfaces
.implements Lcom/google/android/gms/internal/ae;
.implements Lcom/google/android/gms/plus/a/b/k;


# static fields
.field public static final a:Lcom/google/android/gms/internal/fe;

.field private static final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/an$a",
            "<**>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final d:I

.field private e:Z

.field private f:I

.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    new-instance v0, Lcom/google/android/gms/internal/fe;

    invoke-direct {v0}, Lcom/google/android/gms/internal/fe;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/eq$i;->a:Lcom/google/android/gms/internal/fe;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/eq$i;->b:Ljava/util/HashMap;

    const-string/jumbo v1, "primary"

    const-string/jumbo v2, "primary"

    invoke-static {v2, v6}, Lcom/google/android/gms/internal/an$a;->c(Ljava/lang/String;I)Lcom/google/android/gms/internal/an$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/eq$i;->b:Ljava/util/HashMap;

    const-string/jumbo v1, "type"

    const-string/jumbo v2, "type"

    new-instance v3, Lcom/google/android/gms/internal/ak;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ak;-><init>()V

    const-string/jumbo v4, "home"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/ak;->a(Ljava/lang/String;I)Lcom/google/android/gms/internal/ak;

    move-result-object v3

    const-string/jumbo v4, "work"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/ak;->a(Ljava/lang/String;I)Lcom/google/android/gms/internal/ak;

    move-result-object v3

    const-string/jumbo v4, "blog"

    invoke-virtual {v3, v4, v6}, Lcom/google/android/gms/internal/ak;->a(Ljava/lang/String;I)Lcom/google/android/gms/internal/ak;

    move-result-object v3

    const-string/jumbo v4, "profile"

    invoke-virtual {v3, v4, v7}, Lcom/google/android/gms/internal/ak;->a(Ljava/lang/String;I)Lcom/google/android/gms/internal/ak;

    move-result-object v3

    const-string/jumbo v4, "other"

    invoke-virtual {v3, v4, v8}, Lcom/google/android/gms/internal/ak;->a(Ljava/lang/String;I)Lcom/google/android/gms/internal/ak;

    move-result-object v3

    invoke-static {v2, v7, v3}, Lcom/google/android/gms/internal/an$a;->a(Ljava/lang/String;ILcom/google/android/gms/internal/j;)Lcom/google/android/gms/internal/an$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/eq$i;->b:Ljava/util/HashMap;

    const-string/jumbo v1, "value"

    const-string/jumbo v2, "value"

    invoke-static {v2, v8}, Lcom/google/android/gms/internal/an$a;->d(Ljava/lang/String;I)Lcom/google/android/gms/internal/an$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/an;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/eq$i;->d:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/eq$i;->c:Ljava/util/Set;

    return-void
.end method

.method constructor <init>(Ljava/util/Set;IZILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;IZI",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/an;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/eq$i;->c:Ljava/util/Set;

    iput p2, p0, Lcom/google/android/gms/internal/eq$i;->d:I

    iput-boolean p3, p0, Lcom/google/android/gms/internal/eq$i;->e:Z

    iput p4, p0, Lcom/google/android/gms/internal/eq$i;->f:I

    iput-object p5, p0, Lcom/google/android/gms/internal/eq$i;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method protected final a(Lcom/google/android/gms/internal/an$a;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/eq$i;->c:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/an$a;->g()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected final b(Lcom/google/android/gms/internal/an$a;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/an$a;->g()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unknown safe parcelable id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/an$a;->g()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/eq$i;->e:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_1
    iget v0, p0, Lcom/google/android/gms/internal/eq$i;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/eq$i;->g:Ljava/lang/String;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final b()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/an$a",
            "<**>;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/eq$i;->b:Ljava/util/HashMap;

    return-object v0
.end method

.method protected final c()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/eq$i;->a:Lcom/google/android/gms/internal/fe;

    const/4 v0, 0x0

    return v0
.end method

.method final e()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/eq$i;->c:Ljava/util/Set;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    instance-of v0, p1, Lcom/google/android/gms/internal/eq$i;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    if-ne p0, p1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/eq$i;

    sget-object v0, Lcom/google/android/gms/internal/eq$i;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/an$a;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/eq$i;->a(Lcom/google/android/gms/internal/an$a;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/eq$i;->a(Lcom/google/android/gms/internal/an$a;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/eq$i;->b(Lcom/google/android/gms/internal/an$a;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/eq$i;->b(Lcom/google/android/gms/internal/an$a;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/eq$i;->a(Lcom/google/android/gms/internal/an$a;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_0
.end method

.method final f()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/eq$i;->d:I

    return v0
.end method

.method public final g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/eq$i;->e:Z

    return v0
.end method

.method public final h()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/eq$i;->f:I

    return v0
.end method

.method public final hashCode()I
    .locals 4

    const/4 v0, 0x0

    sget-object v1, Lcom/google/android/gms/internal/eq$i;->b:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/an$a;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/eq$i;->a(Lcom/google/android/gms/internal/an$a;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/an$a;->g()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/eq$i;->b(Lcom/google/android/gms/internal/an$a;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/eq$i;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/eq$i;->a:Lcom/google/android/gms/internal/fe;

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/fe;->a(Lcom/google/android/gms/internal/eq$i;Landroid/os/Parcel;)V

    return-void
.end method
