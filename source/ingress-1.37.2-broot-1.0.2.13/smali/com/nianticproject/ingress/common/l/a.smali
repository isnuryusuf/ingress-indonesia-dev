.class public Lcom/nianticproject/ingress/common/l/a;
.super Lcom/nianticproject/ingress/common/ui/a;
.source "SourceFile"


# instance fields
.field private final a:Lcom/nianticproject/ingress/common/h/l;

.field private final b:Lcom/nianticproject/ingress/common/ui/widget/af;

.field private final c:Lcom/nianticproject/ingress/common/l/d;

.field private d:Lcom/nianticproject/ingress/common/ui/widget/aa;

.field private final e:Lcom/nianticproject/ingress/common/model/k;

.field private final f:Lcom/nianticproject/ingress/common/k/z;


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/h/l;Lcom/nianticproject/ingress/common/ui/widget/af;Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/common/c/ak;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 200
    const-string/jumbo v0, "IntelActivity"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/ui/a;-><init>(Ljava/lang/String;)V

    .line 201
    iput-object p1, p0, Lcom/nianticproject/ingress/common/l/a;->a:Lcom/nianticproject/ingress/common/h/l;

    .line 202
    iput-object p2, p0, Lcom/nianticproject/ingress/common/l/a;->b:Lcom/nianticproject/ingress/common/ui/widget/af;

    .line 203
    new-instance v0, Lcom/nianticproject/ingress/common/l/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nianticproject/ingress/common/l/d;-><init>(Lcom/nianticproject/ingress/common/l/a;B)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/l/a;->c:Lcom/nianticproject/ingress/common/l/d;

    .line 204
    iput-object p3, p0, Lcom/nianticproject/ingress/common/l/a;->e:Lcom/nianticproject/ingress/common/model/k;

    .line 205
    new-instance v0, Lcom/nianticproject/ingress/common/k/z;

    invoke-direct {v0, p4}, Lcom/nianticproject/ingress/common/k/z;-><init>(Lcom/nianticproject/ingress/common/c/ak;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/l/a;->f:Lcom/nianticproject/ingress/common/k/z;

    .line 207
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/l/a;->K()Lcom/nianticproject/ingress/common/ui/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/l/a;->c:Lcom/nianticproject/ingress/common/l/d;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/ad;->a(Lcom/nianticproject/ingress/common/ui/ac;)V

    .line 208
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/l/a;Lcom/nianticproject/ingress/common/ui/widget/aa;)Lcom/nianticproject/ingress/common/ui/widget/aa;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/nianticproject/ingress/common/l/a;->d:Lcom/nianticproject/ingress/common/ui/widget/aa;

    return-object p1
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/l/a;)Lcom/nianticproject/ingress/common/ui/widget/af;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/nianticproject/ingress/common/l/a;->b:Lcom/nianticproject/ingress/common/ui/widget/af;

    return-object v0
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/l/a;)Lcom/nianticproject/ingress/common/ui/widget/aa;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/nianticproject/ingress/common/l/a;->d:Lcom/nianticproject/ingress/common/ui/widget/aa;

    return-object v0
.end method

.method static synthetic c(Lcom/nianticproject/ingress/common/l/a;)Lcom/nianticproject/ingress/common/l/d;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/nianticproject/ingress/common/l/a;->c:Lcom/nianticproject/ingress/common/l/d;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 227
    iget-object v0, p0, Lcom/nianticproject/ingress/common/l/a;->f:Lcom/nianticproject/ingress/common/k/z;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/k/z;->b()V

    .line 229
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    const/high16 v1, 0x3f80

    invoke-interface {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/GLCommon;->glClearColor(FFFF)V

    .line 231
    iget-object v0, p0, Lcom/nianticproject/ingress/common/l/a;->d:Lcom/nianticproject/ingress/common/ui/widget/aa;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/widget/aa;->a()V

    .line 232
    iget-object v0, p0, Lcom/nianticproject/ingress/common/l/a;->a:Lcom/nianticproject/ingress/common/h/l;

    new-instance v1, Lcom/nianticproject/ingress/common/l/b;

    const-string/jumbo v2, "IntelActivity.setScore"

    invoke-direct {v1, p0, v2}, Lcom/nianticproject/ingress/common/l/b;-><init>(Lcom/nianticproject/ingress/common/l/a;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/h/l;->a(Lcom/google/a/a/ba;)V

    .line 239
    return-void
.end method

.method public final a(F)V
    .locals 2
    .parameter

    .prologue
    .line 248
    iget-object v0, p0, Lcom/nianticproject/ingress/common/l/a;->f:Lcom/nianticproject/ingress/common/k/z;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/nianticproject/ingress/common/k/z;->a(FZ)V

    .line 249
    return-void
.end method

.method public final a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 5
    .parameter

    .prologue
    .line 212
    iget-object v0, p0, Lcom/nianticproject/ingress/common/l/a;->e:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/model/k;->g()Lcom/nianticproject/ingress/common/ad;

    move-result-object v0

    .line 213
    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ad;->a()Lcom/google/a/d/u;

    move-result-object v0

    .line 215
    iget-object v1, p0, Lcom/nianticproject/ingress/common/l/a;->c:Lcom/nianticproject/ingress/common/l/d;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/l/d;->f:Lcom/nianticproject/ingress/common/l/c;

    invoke-virtual {v0}, Lcom/google/a/d/u;->c()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v0}, Lcom/google/a/d/u;->f()D

    move-result-wide v3

    double-to-float v0, v3

    invoke-virtual {v1, v2, v0}, Lcom/nianticproject/ingress/common/l/c;->a(FF)V

    .line 217
    :cond_0
    return-void
.end method

.method protected final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    const-string/jumbo v0, "IntelActivity"

    return-object v0
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/nianticproject/ingress/common/l/a;->f:Lcom/nianticproject/ingress/common/k/z;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/k/z;->c()V

    .line 222
    iget-object v0, p0, Lcom/nianticproject/ingress/common/l/a;->f:Lcom/nianticproject/ingress/common/k/z;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/k/z;->a()V

    .line 223
    return-void
.end method

.method public final g()V
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/nianticproject/ingress/common/l/a;->c:Lcom/nianticproject/ingress/common/l/d;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/l/d;->f:Lcom/nianticproject/ingress/common/l/c;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/l/c;->e()V

    .line 244
    return-void
.end method
