.class public final Lcom/nianticproject/ingress/i/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/nianticproject/ingress/i/c;",
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
            "Lcom/nianticproject/ingress/i/a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/nianticproject/ingress/shared/portal/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/i/b;->a:Ljava/util/HashSet;

    .line 121
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/i/b;->b:Ljava/util/HashMap;

    .line 131
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/i/b;->c:Ljava/util/LinkedList;

    .line 136
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/i/b;->d:Ljava/util/HashMap;

    return-void
.end method

.method public static a(Lcom/nianticproject/ingress/i/a;)Ljava/util/List;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nianticproject/ingress/i/a;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/shared/portal/PlayerPortalImage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 231
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 232
    if-nez p0, :cond_0

    move-object v0, v1

    .line 240
    :goto_0
    return-object v0

    .line 236
    :cond_0
    invoke-virtual {p0}, Lcom/nianticproject/ingress/i/a;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/portal/PortalImagePage;

    .line 237
    iget-object v0, v0, Lcom/nianticproject/ingress/shared/portal/PortalImagePage;->portalImages:Ljava/util/List;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 240
    goto :goto_0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/nianticproject/ingress/i/b;->a:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/i/c;

    .line 79
    invoke-interface {v0, p0}, Lcom/nianticproject/ingress/i/c;->a(Lcom/nianticproject/ingress/i/b;)V

    goto :goto_0

    .line 81
    :cond_0
    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 110
    invoke-static {p1}, Lcom/google/a/a/br;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "Portal GUID is empty!"

    invoke-static {v0, v1}, Lcom/google/a/a/an;->a(ZLjava/lang/Object;)V

    .line 112
    iget-object v0, p0, Lcom/nianticproject/ingress/i/b;->c:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 113
    iget-object v0, p0, Lcom/nianticproject/ingress/i/b;->c:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 115
    iget-object v0, p0, Lcom/nianticproject/ingress/i/b;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/nianticproject/ingress/i/b;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/nianticproject/ingress/i/b;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/i/a;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/nianticproject/ingress/i/a;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/portal/PortalImagePage;

    iget-object v0, v0, Lcom/nianticproject/ingress/shared/portal/PortalImagePage;->portalImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/portal/PlayerPortalImage;

    iget-object v3, p0, Lcom/nianticproject/ingress/i/b;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/portal/PlayerPortalImage;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 110
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 116
    :cond_2
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/nianticproject/ingress/i/a;
    .locals 2
    .parameter

    .prologue
    .line 219
    invoke-static {p1}, Lcom/google/a/a/br;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "Portal GUID is empty!"

    invoke-static {v0, v1}, Lcom/google/a/a/an;->a(ZLjava/lang/Object;)V

    .line 220
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/i/b;->d(Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/nianticproject/ingress/i/b;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/i/a;

    return-object v0

    .line 219
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/nianticproject/ingress/i/c;)V
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/nianticproject/ingress/i/b;->a:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 63
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/nianticproject/ingress/gameentity/components/portal/PhotoStreamInfo;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 205
    iget-object v0, p0, Lcom/nianticproject/ingress/i/b;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    :goto_0
    return-void

    .line 209
    :cond_0
    new-instance v0, Lcom/nianticproject/ingress/i/a;

    invoke-direct {v0, p1, p2}, Lcom/nianticproject/ingress/i/a;-><init>(Ljava/lang/String;Lcom/nianticproject/ingress/gameentity/components/portal/PhotoStreamInfo;)V

    iget-object v1, p0, Lcom/nianticproject/ingress/i/b;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/i/b;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/nianticproject/ingress/i/b;->a()V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 274
    invoke-static {p1}, Lcom/google/a/a/br;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    const-string/jumbo v3, "Portal GUID is empty!"

    invoke-static {v0, v3}, Lcom/google/a/a/an;->a(ZLjava/lang/Object;)V

    .line 275
    invoke-static {p2}, Lcom/google/a/a/br;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :goto_1
    const-string/jumbo v0, "Photo GUID is empty!"

    invoke-static {v1, v0}, Lcom/google/a/a/an;->a(ZLjava/lang/Object;)V

    .line 277
    iget-object v0, p0, Lcom/nianticproject/ingress/i/b;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/i/a;

    .line 278
    if-nez v0, :cond_3

    .line 286
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v0, v2

    .line 274
    goto :goto_0

    :cond_2
    move v1, v2

    .line 275
    goto :goto_1

    .line 282
    :cond_3
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/i/b;->d(Ljava/lang/String;)V

    .line 283
    invoke-virtual {v0, p2, p3}, Lcom/nianticproject/ingress/i/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    invoke-direct {p0}, Lcom/nianticproject/ingress/i/b;->a()V

    goto :goto_2
.end method

.method public final a(Ljava/lang/String;Lcom/nianticproject/ingress/shared/portal/PortalImagePage;ILjava/lang/String;)Z
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 157
    invoke-static {p1}, Lcom/google/a/a/br;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "Portal GUID is empty!"

    invoke-static {v0, v1}, Lcom/google/a/a/an;->a(ZLjava/lang/Object;)V

    .line 158
    const-string/jumbo v0, "Image page is null!"

    invoke-static {p2, v0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget-object v0, p0, Lcom/nianticproject/ingress/i/b;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/i/a;

    .line 161
    if-nez v0, :cond_1

    .line 162
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "No stream for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 165
    :cond_1
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/i/b;->d(Ljava/lang/String;)V

    .line 166
    iget-object v1, p0, Lcom/nianticproject/ingress/i/b;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p3, v1, p4}, Lcom/nianticproject/ingress/i/a;->a(Lcom/nianticproject/ingress/shared/portal/PortalImagePage;ILjava/util/HashMap;Ljava/lang/String;)Z

    move-result v1

    .line 168
    iget-object v0, p2, Lcom/nianticproject/ingress/shared/portal/PortalImagePage;->portalImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/portal/PlayerPortalImage;

    .line 169
    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/portal/PlayerPortalImage;->c()Ljava/lang/String;

    move-result-object v3

    .line 170
    invoke-static {v3}, Lcom/google/a/a/br;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 171
    iget-object v4, p0, Lcom/nianticproject/ingress/i/b;->d:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 174
    :cond_3
    invoke-direct {p0}, Lcom/nianticproject/ingress/i/b;->a()V

    .line 175
    return v1
.end method

.method public final b(Lcom/nianticproject/ingress/i/c;)V
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/nianticproject/ingress/i/b;->a:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 72
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    .line 249
    invoke-static {p1}, Lcom/google/a/a/br;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "Portal GUID is empty!"

    invoke-static {v0, v1}, Lcom/google/a/a/an;->a(ZLjava/lang/Object;)V

    .line 250
    iget-object v0, p0, Lcom/nianticproject/ingress/i/b;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/i/a;

    .line 251
    if-nez v0, :cond_1

    .line 264
    :goto_1
    return-void

    .line 249
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 255
    :cond_1
    invoke-virtual {v0}, Lcom/nianticproject/ingress/i/a;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/shared/portal/PortalImagePage;

    .line 256
    iget-object v1, v1, Lcom/nianticproject/ingress/shared/portal/PortalImagePage;->portalImages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/shared/portal/PlayerPortalImage;

    .line 257
    iget-object v4, p0, Lcom/nianticproject/ingress/i/b;->d:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/portal/PlayerPortalImage;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 261
    :cond_3
    invoke-virtual {v0}, Lcom/nianticproject/ingress/i/a;->e()V

    .line 262
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/i/b;->d(Ljava/lang/String;)V

    .line 263
    invoke-direct {p0}, Lcom/nianticproject/ingress/i/b;->a()V

    goto :goto_1
.end method

.method public final c(Ljava/lang/String;)Lcom/nianticproject/ingress/shared/portal/a;
    .locals 1
    .parameter

    .prologue
    .line 295
    iget-object v0, p0, Lcom/nianticproject/ingress/i/b;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/portal/a;

    return-object v0
.end method
