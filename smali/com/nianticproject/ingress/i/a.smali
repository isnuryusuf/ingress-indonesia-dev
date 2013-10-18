.class public final Lcom/nianticproject/ingress/i/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/nianticproject/ingress/gameentity/components/portal/PhotoStreamInfo;

.field private final c:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nianticproject/ingress/shared/portal/PortalImagePage;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/HashMap;
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

.field private f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/nianticproject/ingress/gameentity/components/portal/PhotoStreamInfo;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/i/a;->c:Ljava/util/HashSet;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/i/a;->d:Ljava/util/ArrayList;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/i/a;->e:Ljava/util/HashMap;

    .line 69
    invoke-static {p1}, Lcom/google/a/a/br;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 70
    iput-object p1, p0, Lcom/nianticproject/ingress/i/a;->a:Ljava/lang/String;

    .line 71
    invoke-static {p2}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/portal/PhotoStreamInfo;

    iput-object v0, p0, Lcom/nianticproject/ingress/i/a;->b:Lcom/nianticproject/ingress/gameentity/components/portal/PhotoStreamInfo;

    .line 72
    iput-boolean v1, p0, Lcom/nianticproject/ingress/i/a;->f:Z

    .line 73
    return-void

    :cond_0
    move v0, v1

    .line 69
    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 45
    invoke-static {p0}, Lcom/google/a/a/br;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    const/4 v0, 0x0

    .line 49
    :goto_0
    return v0

    :cond_0
    const-string/jumbo v0, "this_is_not_a_true_URL_its_that_fuzzy_image"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/nianticproject/ingress/i/a;->f:Z

    return v0
.end method

.method public final a(Lcom/nianticproject/ingress/shared/portal/PortalImagePage;ILjava/util/HashMap;Ljava/lang/String;)Z
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nianticproject/ingress/shared/portal/PortalImagePage;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/nianticproject/ingress/shared/portal/a;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 130
    if-eqz p4, :cond_0

    .line 131
    :goto_0
    iget-object v0, p0, Lcom/nianticproject/ingress/i/a;->c:Ljava/util/HashSet;

    invoke-virtual {v0, p4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    iget-boolean v0, p0, Lcom/nianticproject/ingress/i/a;->f:Z

    .line 158
    :goto_1
    return v0

    .line 130
    :cond_0
    const-string/jumbo p4, ""

    goto :goto_0

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/i/a;->c:Ljava/util/HashSet;

    invoke-virtual {v0, p4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object v0, p1, Lcom/nianticproject/ingress/shared/portal/PortalImagePage;->portalImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/portal/PlayerPortalImage;

    .line 137
    iget-object v2, p0, Lcom/nianticproject/ingress/i/a;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/portal/PlayerPortalImage;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/portal/PlayerPortalImage;->f()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/portal/PlayerPortalImage;->e()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/google/a/a/ak;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/a/ak;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 143
    :cond_2
    iget-object v0, p0, Lcom/nianticproject/ingress/i/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    iget-object v0, p1, Lcom/nianticproject/ingress/shared/portal/PortalImagePage;->portalImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 145
    if-lt v0, p2, :cond_3

    if-ne v0, p2, :cond_4

    iget-object v0, p1, Lcom/nianticproject/ingress/shared/portal/PortalImagePage;->cursor:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 147
    :cond_3
    iput-boolean v6, p0, Lcom/nianticproject/ingress/i/a;->f:Z

    .line 149
    iget-object v0, p0, Lcom/nianticproject/ingress/i/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v6, :cond_4

    iget-object v0, p1, Lcom/nianticproject/ingress/shared/portal/PortalImagePage;->portalImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 150
    new-instance v0, Lcom/nianticproject/ingress/shared/portal/PlayerPortalImage;

    const-string/jumbo v1, "this_is_not_a_true_GUID_its_that_fuzzy_image"

    const-string/jumbo v2, "this_is_not_a_true_URL_its_that_fuzzy_image"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/nianticproject/ingress/shared/portal/PlayerPortalImage;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/nianticproject/ingress/shared/plext/c;I)V

    .line 152
    iget-object v1, p0, Lcom/nianticproject/ingress/i/a;->d:Ljava/util/ArrayList;

    new-instance v2, Lcom/nianticproject/ingress/shared/portal/PortalImagePage;

    new-array v3, v6, [Lcom/nianticproject/ingress/shared/portal/PlayerPortalImage;

    aput-object v0, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/nianticproject/ingress/shared/portal/PortalImagePage;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    iget-object v1, p0, Lcom/nianticproject/ingress/i/a;->e:Ljava/util/HashMap;

    const-string/jumbo v2, "this_is_not_a_true_GUID_its_that_fuzzy_image"

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/a/a/ak;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/a/ak;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const-string/jumbo v1, "this_is_not_a_true_GUID_its_that_fuzzy_image"

    invoke-virtual {p3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    :cond_4
    iget-boolean v0, p0, Lcom/nianticproject/ingress/i/a;->f:Z

    goto/16 :goto_1
.end method

.method public final a(Ljava/lang/String;Z)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 177
    iget-object v0, p0, Lcom/nianticproject/ingress/i/a;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/a/ak;

    .line 178
    iget-object v1, v0, Lcom/google/a/a/ak;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    .line 179
    if-nez v1, :cond_0

    move v0, v2

    .line 200
    :goto_0
    return v0

    .line 183
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 184
    if-ne p2, v1, :cond_1

    move v0, v2

    .line 185
    goto :goto_0

    .line 188
    :cond_1
    iget-object v0, v0, Lcom/google/a/a/ak;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 190
    if-eqz p2, :cond_2

    .line 191
    add-int/lit8 v0, v0, 0x1

    .line 195
    :goto_1
    iget-object v1, p0, Lcom/nianticproject/ingress/i/a;->e:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/a/a/ak;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/a/ak;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    const/4 v0, 0x1

    goto :goto_0

    .line 193
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public final b()Lcom/nianticproject/ingress/gameentity/components/portal/PhotoStreamInfo;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/nianticproject/ingress/i/a;->b:Lcom/nianticproject/ingress/gameentity/components/portal/PhotoStreamInfo;

    return-object v0
.end method

.method public final c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/shared/portal/PortalImagePage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lcom/nianticproject/ingress/i/a;->d:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/google/a/c/dc;->a(Ljava/util/Collection;)Lcom/google/a/c/dc;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/a/a/ak",
            "<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lcom/nianticproject/ingress/i/a;->e:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/google/a/c/dh;->a(Ljava/util/Map;)Lcom/google/a/c/dh;

    move-result-object v0

    return-object v0
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/nianticproject/ingress/i/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 166
    iget-object v0, p0, Lcom/nianticproject/ingress/i/a;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 167
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ImageStream [portalGuid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nianticproject/ingress/i/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/i/a;->b:Lcom/nianticproject/ingress/gameentity/components/portal/PhotoStreamInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", pages="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/i/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", complete="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nianticproject/ingress/i/a;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
