.class public final Lcom/nianticproject/ingress/common/ui/ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# static fields
.field private static final a:Lcom/nianticproject/ingress/common/t/b;

.field private static final b:Lcom/nianticproject/ingress/common/t/b;


# instance fields
.field private final c:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/nianticproject/ingress/common/ui/ac;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

.field private e:Lcom/badlogic/gdx/scenes/scene2d/Stage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string/jumbo v0, "UI Render"

    invoke-static {v0}, Lcom/nianticproject/ingress/common/t/c;->a(Ljava/lang/String;)Lcom/nianticproject/ingress/common/t/b;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/ingress/common/ui/ad;->a:Lcom/nianticproject/ingress/common/t/b;

    .line 21
    const-string/jumbo v0, "UI Update"

    invoke-static {v0}, Lcom/nianticproject/ingress/common/t/c;->a(Ljava/lang/String;)Lcom/nianticproject/ingress/common/t/b;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/ingress/common/ui/ad;->b:Lcom/nianticproject/ingress/common/t/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/Array;-><init>(ZI)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/ad;->c:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method


# virtual methods
.method public final a()Lcom/badlogic/gdx/scenes/scene2d/Stage;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/ad;->e:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    return-object v0
.end method

.method public final a(F)V
    .locals 3
    .parameter

    .prologue
    .line 128
    :try_start_0
    const-string/jumbo v0, "UiRenderer.onUpdate"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 129
    sget-object v0, Lcom/nianticproject/ingress/common/ui/ad;->b:Lcom/nianticproject/ingress/common/t/b;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/t/b;->b()V

    .line 130
    const/4 v1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/ad;->c:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/ad;->c:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/ui/ac;

    .line 132
    invoke-interface {v0, p1}, Lcom/nianticproject/ingress/common/ui/ac;->a(F)Z

    move-result v2

    if-nez v2, :cond_1

    .line 133
    invoke-interface {v0}, Lcom/nianticproject/ingress/common/ui/ac;->dispose()V

    .line 134
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/ad;->c:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    .line 135
    add-int/lit8 v0, v1, -0x1

    .line 130
    :goto_1
    add-int/lit8 v1, v0, 0x1

    goto :goto_0

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/ad;->e:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->act(F)V

    .line 139
    sget-object v0, Lcom/nianticproject/ingress/common/ui/ad;->b:Lcom/nianticproject/ingress/common/t/b;

    invoke-static {}, Lcom/nianticproject/ingress/common/t/b;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 142
    return-void

    .line 141
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final a(II)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 105
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/ad;->e:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    int-to-float v1, p1

    int-to-float v2, p2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->setViewport(FFZ)V

    .line 106
    return-void
.end method

.method public final a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/Stage;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 34
    :try_start_0
    const-string/jumbo v0, "UiRenderer ctor"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 35
    iput-object p2, p0, Lcom/nianticproject/ingress/common/ui/ad;->e:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    .line 36
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/ad;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    .line 39
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/ad;->c:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/ui/ac;

    .line 40
    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/ad;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/ui/ad;->e:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-interface {v0, v2, v3}, Lcom/nianticproject/ingress/common/ui/ac;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/Stage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 43
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0

    :cond_0
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 44
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/common/ui/ac;)V
    .locals 2
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/ad;->c:Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->contains(Ljava/lang/Object;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/ad;->c:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 62
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/ad;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/ad;->e:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/ad;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/ad;->e:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-interface {p1, v0, v1}, Lcom/nianticproject/ingress/common/ui/ac;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 66
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 113
    :try_start_0
    const-string/jumbo v0, "UiRenderer.onDrawFrame"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 114
    sget-object v0, Lcom/nianticproject/ingress/common/ui/ad;->a:Lcom/nianticproject/ingress/common/t/b;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/t/b;->b()V

    .line 115
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/ad;->e:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/t;->a(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 116
    sget-object v0, Lcom/nianticproject/ingress/common/ui/ad;->a:Lcom/nianticproject/ingress/common/t/b;

    invoke-static {}, Lcom/nianticproject/ingress/common/t/b;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 119
    return-void

    .line 118
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method public final b(Lcom/nianticproject/ingress/common/ui/ac;)Z
    .locals 2
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/ad;->c:Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    move-result v0

    .line 75
    if-eqz v0, :cond_0

    .line 76
    invoke-interface {p1}, Lcom/nianticproject/ingress/common/ui/ac;->dispose()V

    .line 79
    :cond_0
    return v0
.end method

.method public final dispose()V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/ad;->c:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/ui/ac;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/ui/ac;->dispose()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/ad;->c:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 159
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/ad;->e:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->dispose()V

    .line 160
    return-void
.end method
