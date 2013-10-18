.class public Lcom/nianticproject/ingress/common/scanner/ex;
.super Lcom/nianticproject/ingress/common/ui/d/e;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/ui/e/a;


# instance fields
.field private final a:Lcom/nianticproject/ingress/common/ui/e/a;

.field private final b:Lcom/nianticproject/ingress/common/ui/t;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/ui/e/a;Lcom/nianticproject/ingress/common/ui/t;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 194
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/ui/d/e;-><init>()V

    .line 195
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/ex;->a:Lcom/nianticproject/ingress/common/ui/e/a;

    .line 196
    iput-object p2, p0, Lcom/nianticproject/ingress/common/scanner/ex;->b:Lcom/nianticproject/ingress/common/ui/t;

    .line 197
    return-void
.end method


# virtual methods
.method public final a()Lcom/nianticproject/ingress/common/ui/e/d;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ex;->a:Lcom/nianticproject/ingress/common/ui/e/a;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/ui/e/a;->a()Lcom/nianticproject/ingress/common/ui/e/d;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/nianticproject/ingress/common/j/as;)V
    .locals 1
    .parameter

    .prologue
    .line 201
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/ex;->c:Z

    .line 202
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ex;->a:Lcom/nianticproject/ingress/common/ui/e/a;

    invoke-interface {v0, p1}, Lcom/nianticproject/ingress/common/ui/e/a;->a(Lcom/nianticproject/ingress/common/j/as;)V

    .line 203
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/common/model/GameState;)V
    .locals 1
    .parameter

    .prologue
    .line 238
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ex;->a:Lcom/nianticproject/ingress/common/ui/e/a;

    invoke-interface {v0, p1}, Lcom/nianticproject/ingress/common/ui/e/a;->a(Lcom/nianticproject/ingress/common/model/GameState;)V

    .line 239
    return-void
.end method

.method public final a(F)Z
    .locals 2
    .parameter

    .prologue
    .line 218
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ex;->a:Lcom/nianticproject/ingress/common/ui/e/a;

    invoke-interface {v0, p1}, Lcom/nianticproject/ingress/common/ui/e/a;->a(F)Z

    move-result v0

    .line 219
    iget-boolean v1, p0, Lcom/nianticproject/ingress/common/scanner/ex;->c:Z

    if-eq v1, v0, :cond_0

    .line 220
    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/ex;->c:Z

    .line 221
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ex;->b:Lcom/nianticproject/ingress/common/ui/t;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/t;->d()Z

    .line 223
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final a(FF)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 243
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ex;->a:Lcom/nianticproject/ingress/common/ui/e/a;

    invoke-interface {v0, p1, p2}, Lcom/nianticproject/ingress/common/ui/e/a;->a(FF)Z

    move-result v0

    return v0
.end method

.method public final a(II)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 248
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ex;->a:Lcom/nianticproject/ingress/common/ui/e/a;

    invoke-interface {v0, p1, p2}, Lcom/nianticproject/ingress/common/ui/e/a;->a(II)Z

    move-result v0

    return v0
.end method

.method public final a(Lcom/nianticproject/ingress/common/scanner/ej;)Z
    .locals 1
    .parameter

    .prologue
    .line 228
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ex;->a:Lcom/nianticproject/ingress/common/ui/e/a;

    invoke-interface {v0, p1}, Lcom/nianticproject/ingress/common/ui/e/a;->a(Lcom/nianticproject/ingress/common/scanner/ej;)Z

    move-result v0

    return v0
.end method

.method public final a(Lcom/nianticproject/ingress/common/scanner/visuals/bt;)Z
    .locals 1
    .parameter

    .prologue
    .line 233
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ex;->a:Lcom/nianticproject/ingress/common/ui/e/a;

    invoke-interface {v0, p1}, Lcom/nianticproject/ingress/common/ui/e/a;->a(Lcom/nianticproject/ingress/common/scanner/visuals/bt;)Z

    move-result v0

    return v0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 212
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/ex;->c:Z

    .line 213
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ex;->a:Lcom/nianticproject/ingress/common/ui/e/a;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/ui/e/a;->b()V

    .line 214
    return-void
.end method

.method public final c()Lcom/nianticproject/ingress/common/ui/e/a;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ex;->a:Lcom/nianticproject/ingress/common/ui/e/a;

    return-object v0
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ex;->a:Lcom/nianticproject/ingress/common/ui/e/a;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/ui/e/a;->dispose()V

    .line 259
    return-void
.end method
