.class Lcom/nianticproject/ingress/common/j/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/j/o;


# static fields
.field private static final e:Lcom/nianticproject/ingress/common/w/aa;


# instance fields
.field protected final a:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/nianticproject/ingress/common/j/o;",
            ">;"
        }
    .end annotation
.end field

.field protected final b:Lcom/badlogic/gdx/math/Matrix4;

.field protected final c:Lcom/badlogic/gdx/math/Matrix4;

.field protected final d:Lcom/badlogic/gdx/math/Matrix4;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/common/j/p;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/nianticproject/ingress/common/j/p;->e:Lcom/nianticproject/ingress/common/w/aa;

    return-void
.end method

.method constructor <init>(Lcom/badlogic/gdx/utils/Array;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/nianticproject/ingress/common/j/o;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/j/p;->b:Lcom/badlogic/gdx/math/Matrix4;

    .line 19
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/j/p;->c:Lcom/badlogic/gdx/math/Matrix4;

    .line 20
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/j/p;->d:Lcom/badlogic/gdx/math/Matrix4;

    .line 23
    iput-object p1, p0, Lcom/nianticproject/ingress/common/j/p;->a:Lcom/badlogic/gdx/utils/Array;

    .line 24
    return-void
.end method


# virtual methods
.method public final a(Lcom/badlogic/gdx/math/Matrix4;)V
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/p;->b:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 31
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/p;->c:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 33
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/p;->c:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v0, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    invoke-static {v0}, Lcom/badlogic/gdx/math/Matrix4;->inv([F)Z

    .line 34
    return-void
.end method

.method public a(Lcom/badlogic/gdx/math/Matrix4;Lcom/nianticproject/ingress/common/j/f;Lcom/nianticproject/ingress/common/j/n;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    invoke-static {}, La;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/p;->a:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v0, :cond_2

    .line 79
    :cond_1
    return-void

    .line 58
    :cond_2
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/p;->d:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 59
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/p;->d:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v0, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget-object v1, p0, Lcom/nianticproject/ingress/common/j/p;->b:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v1, v1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    invoke-static {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->mul([F[F)V

    .line 61
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/p;->a:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v0, :cond_1

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/p;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/j/o;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/j/p;->d:Lcom/badlogic/gdx/math/Matrix4;

    invoke-interface {v0, v2, p2, p3}, Lcom/nianticproject/ingress/common/j/o;->a(Lcom/badlogic/gdx/math/Matrix4;Lcom/nianticproject/ingress/common/j/f;Lcom/nianticproject/ingress/common/j/n;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    sget-object v2, Lcom/nianticproject/ingress/common/j/p;->e:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v3, "Unexpected exception in draw."

    invoke-virtual {v2, v0, v3}, Lcom/nianticproject/ingress/common/w/aa;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 74
    sget-object v2, Lcom/nianticproject/ingress/shared/ag;->a:Lcom/nianticproject/ingress/shared/ah;

    sget-object v3, Lcom/nianticproject/ingress/shared/ah;->a:Lcom/nianticproject/ingress/shared/ah;

    if-ne v2, v3, :cond_3

    .line 75
    throw v0
.end method

.method protected a(Lcom/nianticproject/ingress/common/j/o;)V
    .locals 0
    .parameter

    .prologue
    .line 112
    invoke-interface {p1}, Lcom/nianticproject/ingress/common/j/o;->dispose()V

    .line 113
    return-void
.end method

.method public a()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 90
    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/p;->a:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/p;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/j/o;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/j/o;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    const/4 v2, 0x1

    .line 96
    :cond_0
    return v2

    .line 90
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public a(F)Z
    .locals 3
    .parameter

    .prologue
    .line 38
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/p;->a:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v0, :cond_1

    .line 39
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/p;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/j/o;

    .line 40
    invoke-interface {v0, p1}, Lcom/nianticproject/ingress/common/j/o;->a(F)Z

    move-result v2

    if-nez v2, :cond_0

    .line 41
    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/j/p;->a(Lcom/nianticproject/ingress/common/j/o;)V

    .line 42
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/p;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    .line 43
    add-int/lit8 v1, v1, -0x1

    .line 38
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 48
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/p;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/j/o;

    .line 102
    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/j/p;->a(Lcom/nianticproject/ingress/common/j/o;)V

    goto :goto_0

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/p;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 105
    return-void
.end method
