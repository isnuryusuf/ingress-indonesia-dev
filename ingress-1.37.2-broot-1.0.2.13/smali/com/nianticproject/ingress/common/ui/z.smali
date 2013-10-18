.class public final Lcom/nianticproject/ingress/common/ui/z;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/nianticproject/ingress/common/ui/f;

.field private final b:Lcom/badlogic/gdx/InputProcessor;

.field private c:Lcom/badlogic/gdx/scenes/scene2d/Stage;

.field private d:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

.field private final e:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/a/a/ak",
            "<",
            "Lcom/nianticproject/ingress/common/ui/widget/t;",
            "+",
            "Ljava/lang/Runnable;",
            ">;>;"
        }
    .end annotation
.end field

.field private f:Lcom/nianticproject/ingress/common/ui/widget/t;

.field private final g:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/ui/f;Lcom/badlogic/gdx/InputProcessor;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {}, Lcom/google/a/c/eq;->b()Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/z;->e:Ljava/util/LinkedList;

    .line 33
    new-instance v0, Lcom/nianticproject/ingress/common/ui/aa;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/ui/aa;-><init>(Lcom/nianticproject/ingress/common/ui/z;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/z;->g:Ljava/lang/Runnable;

    .line 41
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/z;->a:Lcom/nianticproject/ingress/common/ui/f;

    .line 42
    iput-object p2, p0, Lcom/nianticproject/ingress/common/ui/z;->b:Lcom/badlogic/gdx/InputProcessor;

    .line 43
    invoke-virtual {p1, p2}, Lcom/nianticproject/ingress/common/ui/f;->a(Lcom/badlogic/gdx/InputProcessor;)V

    .line 44
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/ui/z;)Lcom/nianticproject/ingress/common/ui/f;
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/z;->a:Lcom/nianticproject/ingress/common/ui/f;

    return-object v0
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/ui/z;)Lcom/badlogic/gdx/InputProcessor;
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/z;->b:Lcom/badlogic/gdx/InputProcessor;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/z;->c:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/t;->a(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 95
    return-void
.end method

.method public final a(F)V
    .locals 4
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/z;->f:Lcom/nianticproject/ingress/common/ui/widget/t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/z;->f:Lcom/nianticproject/ingress/common/ui/widget/t;

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/ui/widget/t;->a(F)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/z;->f:Lcom/nianticproject/ingress/common/ui/widget/t;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/widget/t;->dispose()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/z;->f:Lcom/nianticproject/ingress/common/ui/widget/t;

    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/z;->f:Lcom/nianticproject/ingress/common/ui/widget/t;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/z;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/a/ak;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/google/a/a/ak;->a:Ljava/lang/Object;

    check-cast v1, Lcom/nianticproject/ingress/common/ui/widget/t;

    iput-object v1, p0, Lcom/nianticproject/ingress/common/ui/z;->f:Lcom/nianticproject/ingress/common/ui/widget/t;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/z;->f:Lcom/nianticproject/ingress/common/ui/widget/t;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/z;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/ui/z;->c:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v1, v2, v3}, Lcom/nianticproject/ingress/common/ui/widget/t;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    iget-object v0, v0, Lcom/google/a/a/ak;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/z;->c:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->act(F)V

    .line 74
    return-void
.end method

.method public final a(FLjava/lang/Runnable;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const v4, 0x3f4ccccd

    const/4 v3, 0x0

    .line 47
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/z;->f:Lcom/nianticproject/ingress/common/ui/widget/t;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/z;->f:Lcom/nianticproject/ingress/common/ui/widget/t;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/widget/t;->dispose()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/z;->f:Lcom/nianticproject/ingress/common/ui/widget/t;

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/z;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 52
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/z;->e:Ljava/util/LinkedList;

    new-instance v1, Lcom/nianticproject/ingress/common/ui/widget/t;

    invoke-direct {v1, v3, v4, p1}, Lcom/nianticproject/ingress/common/ui/widget/t;-><init>(FFF)V

    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/z;->g:Ljava/lang/Runnable;

    invoke-static {v1, v2}, Lcom/google/a/a/ak;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/a/ak;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 53
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/z;->e:Ljava/util/LinkedList;

    new-instance v1, Lcom/nianticproject/ingress/common/ui/widget/t;

    const v2, 0x3e4ccccd

    invoke-direct {v1, v4, v3, v2}, Lcom/nianticproject/ingress/common/ui/widget/t;-><init>(FFF)V

    new-instance v2, Lcom/nianticproject/ingress/common/ui/ab;

    invoke-direct {v2, p0, p2}, Lcom/nianticproject/ingress/common/ui/ab;-><init>(Lcom/nianticproject/ingress/common/ui/z;Ljava/lang/Runnable;)V

    invoke-static {v1, v2}, Lcom/google/a/a/ak;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/a/ak;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 60
    return-void
.end method

.method public final a(II)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/z;->c:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    int-to-float v1, p1

    int-to-float v2, p2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->setViewport(FFZ)V

    .line 69
    return-void
.end method

.method public final a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/Stage;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/z;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    .line 64
    iput-object p2, p0, Lcom/nianticproject/ingress/common/ui/z;->c:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    .line 65
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/z;->c:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->dispose()V

    .line 99
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/z;->f:Lcom/nianticproject/ingress/common/ui/widget/t;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/w/ac;->a(Lcom/badlogic/gdx/utils/Disposable;)Lcom/badlogic/gdx/utils/Disposable;

    .line 100
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/z;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 101
    return-void
.end method
