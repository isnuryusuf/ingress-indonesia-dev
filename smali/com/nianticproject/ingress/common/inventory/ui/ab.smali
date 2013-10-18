.class final Lcom/nianticproject/ingress/common/inventory/ui/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/ui/widget/bb;
.implements Lcom/nianticproject/ingress/common/ui/widget/bc;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/inventory/ui/v;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/common/inventory/ui/q;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/nianticproject/ingress/common/inventory/ui/ag;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/nianticproject/ingress/common/inventory/ui/ag;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/nianticproject/ingress/common/inventory/ui/ag;


# direct methods
.method private constructor <init>(Lcom/nianticproject/ingress/common/inventory/ui/v;)V
    .locals 1
    .parameter

    .prologue
    .line 813
    iput-object p1, p0, Lcom/nianticproject/ingress/common/inventory/ui/ab;->a:Lcom/nianticproject/ingress/common/inventory/ui/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 816
    invoke-static {}, Lcom/google/a/c/hc;->b()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/ab;->c:Ljava/util/Map;

    .line 817
    invoke-static {}, Lcom/google/a/c/hc;->b()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/ab;->d:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/nianticproject/ingress/common/inventory/ui/v;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 813
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/common/inventory/ui/ab;-><init>(Lcom/nianticproject/ingress/common/inventory/ui/v;)V

    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/inventory/ui/ab;)V
    .locals 1
    .parameter

    .prologue
    .line 813
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/inventory/ui/ab;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/ab;->b:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/inventory/ui/ab;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 813
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/inventory/ui/ab;->c()V

    iput-object p1, p0, Lcom/nianticproject/ingress/common/inventory/ui/ab;->b:Ljava/util/List;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/ab;->a:Lcom/nianticproject/ingress/common/inventory/ui/v;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/inventory/ui/v;->q(Lcom/nianticproject/ingress/common/inventory/ui/v;)Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->e()V

    return-void
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/inventory/ui/ab;)V
    .locals 2
    .parameter

    .prologue
    .line 813
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/ab;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/inventory/ui/ag;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/inventory/ui/ag;->b()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 824
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/ab;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/inventory/ui/ag;

    .line 825
    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/inventory/ui/ag;->a()V

    goto :goto_0

    .line 827
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/ab;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 828
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/ab;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 829
    return-void
.end method


# virtual methods
.method public final a(Lcom/badlogic/gdx/scenes/scene2d/Actor;)I
    .locals 1
    .parameter

    .prologue
    .line 884
    check-cast p1, Lcom/nianticproject/ingress/common/inventory/ui/ag;

    .line 885
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/ab;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 886
    if-nez v0, :cond_0

    .line 887
    const/4 v0, -0x1

    .line 889
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public final a(I)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 3
    .parameter

    .prologue
    .line 866
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/ab;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/inventory/ui/ag;

    .line 867
    if-nez v0, :cond_0

    .line 868
    iget-object v1, p0, Lcom/nianticproject/ingress/common/inventory/ui/ab;->b:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 869
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/ab;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/inventory/ui/q;

    .line 871
    new-instance v1, Lcom/nianticproject/ingress/common/inventory/ui/ag;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/inventory/ui/ab;->a:Lcom/nianticproject/ingress/common/inventory/ui/v;

    invoke-direct {v1, v2, v0}, Lcom/nianticproject/ingress/common/inventory/ui/ag;-><init>(Lcom/nianticproject/ingress/common/inventory/ui/v;Lcom/nianticproject/ingress/common/inventory/ui/q;)V

    .line 873
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/ab;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 874
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/ab;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 876
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/ab;->a:Lcom/nianticproject/ingress/common/inventory/ui/v;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/inventory/ui/v;->q(Lcom/nianticproject/ingress/common/inventory/ui/v;)Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    move-object v0, v1

    .line 879
    :cond_0
    return-object v0
.end method

.method public final a()V
    .locals 0

    .prologue
    .line 939
    return-void
.end method

.method public final a(Lcom/badlogic/gdx/scenes/scene2d/Actor;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 895
    check-cast p1, Lcom/nianticproject/ingress/common/inventory/ui/ag;

    .line 896
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/ab;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 898
    if-eqz v0, :cond_0

    .line 899
    if-nez p2, :cond_1

    .line 900
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/nianticproject/ingress/common/inventory/ui/ag;->a(Z)V

    .line 902
    iget-object v1, p0, Lcom/nianticproject/ingress/common/inventory/ui/ab;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 903
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/ab;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 905
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/inventory/ui/ag;->a()V

    .line 910
    :cond_0
    :goto_0
    return-void

    .line 907
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/nianticproject/ingress/common/inventory/ui/ag;->a(Z)V

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 943
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/ab;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 944
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/ab;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 946
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 2
    .parameter

    .prologue
    .line 914
    check-cast p1, Lcom/nianticproject/ingress/common/inventory/ui/ag;

    .line 915
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/ab;->e:Lcom/nianticproject/ingress/common/inventory/ui/ag;

    if-eqz v0, :cond_0

    .line 916
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/ab;->e:Lcom/nianticproject/ingress/common/inventory/ui/ag;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/inventory/ui/ag;->b(Z)V

    .line 919
    :cond_0
    iput-object p1, p0, Lcom/nianticproject/ingress/common/inventory/ui/ab;->e:Lcom/nianticproject/ingress/common/inventory/ui/ag;

    .line 920
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/ab;->a:Lcom/nianticproject/ingress/common/inventory/ui/v;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/inventory/ui/v;->b(Lcom/nianticproject/ingress/common/inventory/ui/v;)Lcom/nianticproject/ingress/common/inventory/ui/ae;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/inventory/ui/ab;->e:Lcom/nianticproject/ingress/common/inventory/ui/ag;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/inventory/ui/ag;->b(Lcom/nianticproject/ingress/common/inventory/ui/ag;)Lcom/nianticproject/ingress/common/inventory/ui/u;

    move-result-object v1

    invoke-interface {v1}, Lcom/nianticproject/ingress/common/inventory/ui/u;->a()Lcom/nianticproject/ingress/common/inventory/ui/q;

    move-result-object v1

    iput-object v1, v0, Lcom/nianticproject/ingress/common/inventory/ui/ae;->f:Lcom/nianticproject/ingress/common/inventory/ui/q;

    .line 922
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/ab;->e:Lcom/nianticproject/ingress/common/inventory/ui/ag;

    if-eqz v0, :cond_1

    .line 923
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/ab;->e:Lcom/nianticproject/ingress/common/inventory/ui/ag;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/inventory/ui/ag;->b(Z)V

    .line 925
    :cond_1
    return-void
.end method

.method public final c(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 1
    .parameter

    .prologue
    .line 930
    check-cast p1, Lcom/nianticproject/ingress/common/inventory/ui/ag;

    .line 931
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/ab;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 932
    if-eqz v0, :cond_0

    .line 933
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/inventory/ui/ag;->c()V

    .line 935
    :cond_0
    return-void
.end method
