.class public final Lcom/nianticproject/ingress/multiphotos/bb;
.super Lcom/nianticproject/ingress/service/j;
.source "SourceFile"


# static fields
.field private static final a:Lcom/nianticproject/ingress/common/w/aa;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/nianticproject/ingress/multiphotos/bc;

.field private final e:Lcom/nianticproject/ingress/i/b;

.field private final f:I

.field private g:Ljava/lang/String;

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v1, "PortalImagePaginator"

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/nianticproject/ingress/multiphotos/bb;->a:Lcom/nianticproject/ingress/common/w/aa;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/nianticproject/ingress/multiphotos/bc;Lcom/nianticproject/ingress/i/b;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 84
    invoke-direct {p0}, Lcom/nianticproject/ingress/service/j;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/multiphotos/bb;->g:Ljava/lang/String;

    .line 71
    const/4 v0, -0x1

    iput v0, p0, Lcom/nianticproject/ingress/multiphotos/bb;->h:I

    .line 85
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/nianticproject/ingress/multiphotos/bb;->b:Landroid/content/Context;

    .line 86
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 87
    iput-object p2, p0, Lcom/nianticproject/ingress/multiphotos/bb;->c:Ljava/lang/String;

    .line 88
    invoke-static {p3}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/multiphotos/bc;

    iput-object v0, p0, Lcom/nianticproject/ingress/multiphotos/bb;->d:Lcom/nianticproject/ingress/multiphotos/bc;

    .line 89
    invoke-static {p4}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/i/b;

    iput-object v0, p0, Lcom/nianticproject/ingress/multiphotos/bb;->e:Lcom/nianticproject/ingress/i/b;

    .line 90
    invoke-static {v1}, Lcom/google/a/a/an;->a(Z)V

    .line 91
    const/16 v0, 0xa

    iput v0, p0, Lcom/nianticproject/ingress/multiphotos/bb;->f:I

    .line 92
    return-void

    .line 86
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 161
    invoke-static {p0}, Lcom/nianticproject/ingress/service/NemesisService;->a(Lcom/nianticproject/ingress/service/i;)V

    .line 162
    return-void
.end method

.method public final a(ILcom/nianticproject/ingress/shared/rpc/u;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 117
    iget v0, p0, Lcom/nianticproject/ingress/multiphotos/bb;->h:I

    if-ne p1, v0, :cond_0

    .line 118
    sget-object v1, Lcom/nianticproject/ingress/multiphotos/bb;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v2, "Portal image page load failed, error: %s"

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/nianticproject/ingress/shared/rpc/u;->name()Ljava/lang/String;

    move-result-object v0

    :goto_0
    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/nianticproject/ingress/common/w/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    const/4 v0, -0x1

    iput v0, p0, Lcom/nianticproject/ingress/multiphotos/bb;->h:I

    .line 121
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/bb;->d:Lcom/nianticproject/ingress/multiphotos/bc;

    invoke-interface {v0, p2}, Lcom/nianticproject/ingress/multiphotos/bc;->a(Lcom/nianticproject/ingress/shared/rpc/u;)V

    .line 123
    :cond_0
    return-void

    .line 118
    :cond_1
    const-string/jumbo v0, "null"

    goto :goto_0
.end method

.method public final a(ILjava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 96
    iget v0, p0, Lcom/nianticproject/ingress/multiphotos/bb;->h:I

    if-ne p1, v0, :cond_0

    .line 97
    sget-object v0, Lcom/nianticproject/ingress/multiphotos/bb;->a:Lcom/nianticproject/ingress/common/w/aa;

    .line 98
    const/4 v0, -0x1

    iput v0, p0, Lcom/nianticproject/ingress/multiphotos/bb;->h:I

    .line 99
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/bb;->e:Lcom/nianticproject/ingress/i/b;

    invoke-virtual {v0, p2}, Lcom/nianticproject/ingress/i/b;->a(Ljava/lang/String;)Lcom/nianticproject/ingress/i/a;

    move-result-object v1

    .line 100
    invoke-virtual {v1}, Lcom/nianticproject/ingress/i/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/multiphotos/bb;->g:Ljava/lang/String;

    .line 102
    sget-object v0, Lcom/nianticproject/ingress/multiphotos/bb;->a:Lcom/nianticproject/ingress/common/w/aa;

    .line 109
    :goto_0
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/bb;->d:Lcom/nianticproject/ingress/multiphotos/bc;

    invoke-static {v1}, Lcom/nianticproject/ingress/i/b;->a(Lcom/nianticproject/ingress/i/a;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Lcom/nianticproject/ingress/i/a;->d()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1}, Lcom/nianticproject/ingress/i/a;->a()Z

    move-result v1

    invoke-interface {v0, v2, v3, v1}, Lcom/nianticproject/ingress/multiphotos/bc;->a(Ljava/util/List;Ljava/util/Map;Z)V

    .line 112
    :cond_0
    return-void

    .line 104
    :cond_1
    invoke-virtual {v1}, Lcom/nianticproject/ingress/i/a;->c()Ljava/util/List;

    move-result-object v0

    .line 105
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/portal/PortalImagePage;

    iget-object v0, v0, Lcom/nianticproject/ingress/shared/portal/PortalImagePage;->cursor:Ljava/lang/String;

    iput-object v0, p0, Lcom/nianticproject/ingress/multiphotos/bb;->g:Ljava/lang/String;

    .line 106
    sget-object v0, Lcom/nianticproject/ingress/multiphotos/bb;->a:Lcom/nianticproject/ingress/common/w/aa;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/nianticproject/ingress/multiphotos/bb;->g:Ljava/lang/String;

    aput-object v3, v0, v2

    goto :goto_0
.end method

.method public final a(Z)Z
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 143
    iget-object v2, p0, Lcom/nianticproject/ingress/multiphotos/bb;->e:Lcom/nianticproject/ingress/i/b;

    iget-object v3, p0, Lcom/nianticproject/ingress/multiphotos/bb;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/nianticproject/ingress/i/b;->a(Ljava/lang/String;)Lcom/nianticproject/ingress/i/a;

    move-result-object v2

    .line 144
    invoke-virtual {v2}, Lcom/nianticproject/ingress/i/a;->a()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 145
    if-eqz p1, :cond_0

    .line 146
    iget-object v1, p0, Lcom/nianticproject/ingress/multiphotos/bb;->d:Lcom/nianticproject/ingress/multiphotos/bc;

    invoke-static {v2}, Lcom/nianticproject/ingress/i/b;->a(Lcom/nianticproject/ingress/i/a;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2}, Lcom/nianticproject/ingress/i/a;->d()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v2}, Lcom/nianticproject/ingress/i/a;->a()Z

    move-result v2

    invoke-interface {v1, v3, v4, v2}, Lcom/nianticproject/ingress/multiphotos/bc;->a(Ljava/util/List;Ljava/util/Map;Z)V

    .line 154
    :cond_0
    :goto_0
    return v0

    .line 152
    :cond_1
    sget-object v2, Lcom/nianticproject/ingress/multiphotos/bb;->a:Lcom/nianticproject/ingress/common/w/aa;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/nianticproject/ingress/multiphotos/bb;->f:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/bb;->g:Ljava/lang/String;

    aput-object v0, v2, v1

    .line 153
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/bb;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/nianticproject/ingress/multiphotos/bb;->c:Ljava/lang/String;

    iget v3, p0, Lcom/nianticproject/ingress/multiphotos/bb;->f:I

    iget-object v4, p0, Lcom/nianticproject/ingress/multiphotos/bb;->g:Ljava/lang/String;

    invoke-static {v0, v2, v3, v4}, Lcom/nianticproject/ingress/service/NemesisService;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nianticproject/ingress/multiphotos/bb;->h:I

    move v0, v1

    .line 154
    goto :goto_0
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 168
    invoke-static {p0}, Lcom/nianticproject/ingress/service/NemesisService;->b(Lcom/nianticproject/ingress/service/i;)V

    .line 169
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 175
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/multiphotos/bb;->g:Ljava/lang/String;

    .line 176
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/bb;->e:Lcom/nianticproject/ingress/i/b;

    iget-object v1, p0, Lcom/nianticproject/ingress/multiphotos/bb;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/i/b;->b(Ljava/lang/String;)V

    .line 177
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/multiphotos/bb;->a(Z)Z

    .line 178
    sget-object v0, Lcom/nianticproject/ingress/multiphotos/bb;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v1, "Pagination restarted!"

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;->b(Ljava/lang/String;)V

    .line 179
    return-void
.end method
