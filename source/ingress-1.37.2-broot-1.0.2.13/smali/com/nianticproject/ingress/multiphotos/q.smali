.class public final Lcom/nianticproject/ingress/multiphotos/q;
.super Landroid/support/v4/app/r;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nianticproject/ingress/shared/portal/PlayerPortalImage;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/a/a/ak",
            "<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final c:I


# direct methods
.method public constructor <init>(Landroid/support/v4/app/j;)V
    .locals 1
    .parameter

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nianticproject/ingress/multiphotos/q;-><init>(Landroid/support/v4/app/j;I)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/j;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/support/v4/app/r;-><init>(Landroid/support/v4/app/j;)V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/multiphotos/q;->a:Ljava/util/ArrayList;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/multiphotos/q;->b:Ljava/util/HashMap;

    .line 38
    iput p2, p0, Lcom/nianticproject/ingress/multiphotos/q;->c:I

    .line 39
    return-void
.end method


# virtual methods
.method public final a(I)Landroid/support/v4/app/Fragment;
    .locals 2
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/portal/PlayerPortalImage;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/portal/PlayerPortalImage;->c()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/nianticproject/ingress/multiphotos/q;->c:I

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/multiphotos/ag;->a(Ljava/lang/String;I)Lcom/nianticproject/ingress/multiphotos/ag;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/util/Collection;Ljava/util/Map;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/nianticproject/ingress/shared/portal/PlayerPortalImage;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/a/a/ak",
            "<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 59
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/q;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 60
    if-eqz p1, :cond_0

    .line 61
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 63
    :cond_0
    if-eqz p2, :cond_1

    .line 64
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/q;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 67
    :cond_1
    invoke-virtual {p0}, Lcom/nianticproject/ingress/multiphotos/q;->d()V

    .line 68
    return-void
.end method

.method public final b(I)Lcom/nianticproject/ingress/shared/portal/a;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/portal/a;

    return-object v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final c(I)Z
    .locals 2
    .parameter

    .prologue
    .line 86
    invoke-virtual {p0, p1}, Lcom/nianticproject/ingress/multiphotos/q;->b(I)Lcom/nianticproject/ingress/shared/portal/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/nianticproject/ingress/shared/portal/a;->c()Ljava/lang/String;

    move-result-object v0

    .line 87
    iget-object v1, p0, Lcom/nianticproject/ingress/multiphotos/q;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/a/ak;

    iget-object v0, v0, Lcom/google/a/a/ak;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final d(I)I
    .locals 2
    .parameter

    .prologue
    .line 91
    invoke-virtual {p0, p1}, Lcom/nianticproject/ingress/multiphotos/q;->b(I)Lcom/nianticproject/ingress/shared/portal/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/nianticproject/ingress/shared/portal/a;->c()Ljava/lang/String;

    move-result-object v0

    .line 92
    iget-object v1, p0, Lcom/nianticproject/ingress/multiphotos/q;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/a/ak;

    iget-object v0, v0, Lcom/google/a/a/ak;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final e(I)Z
    .locals 1
    .parameter

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Lcom/nianticproject/ingress/multiphotos/q;->b(I)Lcom/nianticproject/ingress/shared/portal/a;

    move-result-object v0

    .line 97
    invoke-interface {v0}, Lcom/nianticproject/ingress/shared/portal/a;->b()Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-static {v0}, Lcom/nianticproject/ingress/i/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
