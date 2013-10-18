.class abstract Lcom/nianticproject/ingress/common/scanner/ep;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/j/aj;
.implements Lcom/nianticproject/ingress/common/j/o;


# instance fields
.field private final a:Lcom/nianticproject/ingress/common/q/c;

.field b:I

.field private final c:Lcom/nianticproject/ingress/common/scanner/eo;

.field private final d:Lcom/nianticproject/ingress/common/scanner/fp;

.field private final e:Lcom/nianticproject/ingress/common/j/q;

.field private final f:Lcom/nianticproject/ingress/common/scanner/fr;


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/scanner/fp;Lcom/nianticproject/ingress/common/q/c;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/eq;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/scanner/eq;-><init>(Lcom/nianticproject/ingress/common/scanner/ep;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ep;->e:Lcom/nianticproject/ingress/common/j/q;

    .line 40
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/er;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/scanner/er;-><init>(Lcom/nianticproject/ingress/common/scanner/ep;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ep;->f:Lcom/nianticproject/ingress/common/scanner/fr;

    .line 49
    invoke-static {p2}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/q/c;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ep;->a:Lcom/nianticproject/ingress/common/q/c;

    .line 50
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/ep;->d:Lcom/nianticproject/ingress/common/scanner/fp;

    .line 51
    invoke-virtual {p2}, Lcom/nianticproject/ingress/common/q/c;->e()Lcom/nianticproject/ingress/common/q/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/nianticproject/ingress/common/scanner/fp;->a(Lcom/nianticproject/ingress/common/q/a;)Lcom/nianticproject/ingress/common/scanner/eo;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ep;->c:Lcom/nianticproject/ingress/common/scanner/eo;

    .line 54
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ep;->f:Lcom/nianticproject/ingress/common/scanner/fr;

    invoke-virtual {p1, v0}, Lcom/nianticproject/ingress/common/scanner/fp;->a(Lcom/nianticproject/ingress/common/scanner/fr;)V

    .line 55
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ep;->f:Lcom/nianticproject/ingress/common/scanner/fr;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/scanner/fr;->a()V

    .line 56
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/scanner/ep;)Lcom/nianticproject/ingress/common/scanner/eo;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ep;->c:Lcom/nianticproject/ingress/common/scanner/eo;

    return-object v0
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/scanner/ep;)Lcom/nianticproject/ingress/common/j/q;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ep;->e:Lcom/nianticproject/ingress/common/j/q;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/badlogic/gdx/math/collision/Ray;)Lcom/nianticproject/ingress/common/j/ak;
    .locals 1
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ep;->e:Lcom/nianticproject/ingress/common/j/q;

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/j/q;->a(Lcom/badlogic/gdx/math/collision/Ray;)Lcom/nianticproject/ingress/common/j/ak;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/nianticproject/ingress/common/j/f;Lcom/badlogic/gdx/math/Matrix4;Lcom/badlogic/gdx/math/Vector2;)Lcom/nianticproject/ingress/common/j/ak;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ep;->e:Lcom/nianticproject/ingress/common/j/q;

    invoke-virtual {v0, p1, p2, p3}, Lcom/nianticproject/ingress/common/j/q;->a(Lcom/nianticproject/ingress/common/j/f;Lcom/badlogic/gdx/math/Matrix4;Lcom/badlogic/gdx/math/Vector2;)Lcom/nianticproject/ingress/common/j/ak;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/badlogic/gdx/math/Matrix4;Lcom/nianticproject/ingress/common/j/f;Lcom/nianticproject/ingress/common/j/n;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ep;->e:Lcom/nianticproject/ingress/common/j/q;

    invoke-virtual {v0, p1, p2, p3}, Lcom/nianticproject/ingress/common/j/q;->a(Lcom/badlogic/gdx/math/Matrix4;Lcom/nianticproject/ingress/common/j/f;Lcom/nianticproject/ingress/common/j/n;)V

    .line 83
    return-void
.end method

.method protected abstract a(Lcom/nianticproject/ingress/common/scanner/fg;)V
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public final a(F)Z
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ep;->e:Lcom/nianticproject/ingress/common/j/q;

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/j/q;->a(F)Z

    .line 71
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ep;->e:Lcom/nianticproject/ingress/common/j/q;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/j/q;->w_()Z

    move-result v0

    return v0
.end method

.method public final b(Lcom/nianticproject/ingress/common/scanner/fg;)V
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ep;->e:Lcom/nianticproject/ingress/common/j/q;

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/j/q;->b(Lcom/nianticproject/ingress/common/j/o;)V

    .line 60
    return-void
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ep;->e:Lcom/nianticproject/ingress/common/j/q;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/j/q;->dispose()V

    .line 77
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ep;->d:Lcom/nianticproject/ingress/common/scanner/fp;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/ep;->f:Lcom/nianticproject/ingress/common/scanner/fr;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/fp;->b(Lcom/nianticproject/ingress/common/scanner/fr;)V

    .line 78
    return-void
.end method
