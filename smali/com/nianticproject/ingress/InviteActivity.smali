.class public Lcom/nianticproject/ingress/InviteActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/x;
.implements Lcom/nianticproject/ingress/common/m/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/app/FragmentActivity;",
        "Landroid/support/v4/app/x",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/nianticproject/ingress/f/a;",
        ">;>;",
        "Lcom/nianticproject/ingress/common/m/d;"
    }
.end annotation


# static fields
.field private static final a:Ljava/util/regex/Pattern;


# instance fields
.field private final b:Lcom/nianticproject/ingress/common/w/aa;

.field private final c:Lcom/nianticproject/ingress/bk;

.field private final d:Lcom/nianticproject/ingress/bk;

.field private final e:Lcom/nianticproject/ingress/bk;

.field private final f:Lcom/nianticproject/ingress/bk;

.field private final g:Lcom/nianticproject/ingress/bk;

.field private final h:Lcom/nianticproject/ingress/common/w/f;

.field private final i:Lcom/nianticproject/ingress/common/w/f;

.field private final j:Lcom/nianticproject/ingress/common/w/f;

.field private final k:Lcom/nianticproject/ingress/common/w/f;

.field private l:Lcom/nianticproject/ingress/common/w/b;

.field private m:Lcom/nianticproject/ingress/f/k;

.field private n:Landroid/view/View;

.field private o:Landroid/view/View;

.field private p:Landroid/widget/Button;

.field private q:Landroid/widget/Button;

.field private r:Landroid/widget/AutoCompleteTextView;

.field private s:Landroid/widget/TextView;

.field private t:Lcom/nianticproject/ingress/common/m/a;

.field private u:Lcom/nianticproject/ingress/bl;

.field private v:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-string/jumbo v0, "^[a-z0-9!#$%&\'*+/=?^_`{|}~-]+(?:\\.[a-z0-9!#$%&\'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/ingress/InviteActivity;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 134
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/InviteActivity;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/InviteActivity;->b:Lcom/nianticproject/ingress/common/w/aa;

    .line 137
    new-instance v0, Lcom/nianticproject/ingress/bk;

    sget-object v1, Lcom/nianticproject/ingress/bl;->a:Lcom/nianticproject/ingress/bl;

    invoke-direct {v0, p0, v1}, Lcom/nianticproject/ingress/bk;-><init>(Lcom/nianticproject/ingress/InviteActivity;Lcom/nianticproject/ingress/bl;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/InviteActivity;->c:Lcom/nianticproject/ingress/bk;

    .line 138
    new-instance v0, Lcom/nianticproject/ingress/bk;

    sget-object v1, Lcom/nianticproject/ingress/bl;->b:Lcom/nianticproject/ingress/bl;

    invoke-direct {v0, p0, v1}, Lcom/nianticproject/ingress/bk;-><init>(Lcom/nianticproject/ingress/InviteActivity;Lcom/nianticproject/ingress/bl;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/InviteActivity;->d:Lcom/nianticproject/ingress/bk;

    .line 139
    new-instance v0, Lcom/nianticproject/ingress/bk;

    sget-object v1, Lcom/nianticproject/ingress/bl;->c:Lcom/nianticproject/ingress/bl;

    invoke-direct {v0, p0, v1}, Lcom/nianticproject/ingress/bk;-><init>(Lcom/nianticproject/ingress/InviteActivity;Lcom/nianticproject/ingress/bl;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/InviteActivity;->e:Lcom/nianticproject/ingress/bk;

    .line 140
    new-instance v0, Lcom/nianticproject/ingress/bk;

    sget-object v1, Lcom/nianticproject/ingress/bl;->d:Lcom/nianticproject/ingress/bl;

    invoke-direct {v0, p0, v1}, Lcom/nianticproject/ingress/bk;-><init>(Lcom/nianticproject/ingress/InviteActivity;Lcom/nianticproject/ingress/bl;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/InviteActivity;->f:Lcom/nianticproject/ingress/bk;

    .line 141
    new-instance v0, Lcom/nianticproject/ingress/bk;

    sget-object v1, Lcom/nianticproject/ingress/bl;->e:Lcom/nianticproject/ingress/bl;

    invoke-direct {v0, p0, v1}, Lcom/nianticproject/ingress/bk;-><init>(Lcom/nianticproject/ingress/InviteActivity;Lcom/nianticproject/ingress/bl;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/InviteActivity;->g:Lcom/nianticproject/ingress/bk;

    .line 144
    new-instance v0, Lcom/nianticproject/ingress/common/w/f;

    const-string/jumbo v1, "CONTACTS_LOADED"

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/f;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/InviteActivity;->h:Lcom/nianticproject/ingress/common/w/f;

    .line 145
    new-instance v0, Lcom/nianticproject/ingress/common/w/f;

    const-string/jumbo v1, "INFO_LOADED"

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/f;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/InviteActivity;->i:Lcom/nianticproject/ingress/common/w/f;

    .line 146
    new-instance v0, Lcom/nianticproject/ingress/common/w/f;

    const-string/jumbo v1, "RETRY"

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/f;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/InviteActivity;->j:Lcom/nianticproject/ingress/common/w/f;

    .line 147
    new-instance v0, Lcom/nianticproject/ingress/common/w/f;

    const-string/jumbo v1, "INFO_ERROR"

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/f;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/InviteActivity;->k:Lcom/nianticproject/ingress/common/w/f;

    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/InviteActivity;Lcom/nianticproject/ingress/bl;)Lcom/nianticproject/ingress/bl;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/nianticproject/ingress/InviteActivity;->u:Lcom/nianticproject/ingress/bl;

    return-object p1
.end method

.method static synthetic a(Lcom/nianticproject/ingress/InviteActivity;)Lcom/nianticproject/ingress/common/w/aa;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/nianticproject/ingress/InviteActivity;->b:Lcom/nianticproject/ingress/common/w/aa;

    return-object v0
.end method

.method private a(I)V
    .locals 5
    .parameter

    .prologue
    .line 272
    iget-object v0, p0, Lcom/nianticproject/ingress/InviteActivity;->s:Landroid/widget/TextView;

    const v1, 0x7f090064

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/nianticproject/ingress/InviteActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/InviteActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/InviteActivity;->a(I)V

    return-void
.end method

.method static synthetic b(Lcom/nianticproject/ingress/InviteActivity;)Lcom/nianticproject/ingress/bl;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/nianticproject/ingress/InviteActivity;->u:Lcom/nianticproject/ingress/bl;

    return-object v0
.end method

.method static synthetic c(Lcom/nianticproject/ingress/InviteActivity;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/nianticproject/ingress/InviteActivity;->n:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lcom/nianticproject/ingress/InviteActivity;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/nianticproject/ingress/InviteActivity;->o:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/nianticproject/ingress/InviteActivity;->a:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic e(Lcom/nianticproject/ingress/InviteActivity;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/nianticproject/ingress/InviteActivity;->p:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic f(Lcom/nianticproject/ingress/InviteActivity;)Lcom/nianticproject/ingress/common/w/f;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/nianticproject/ingress/InviteActivity;->j:Lcom/nianticproject/ingress/common/w/f;

    return-object v0
.end method

.method static synthetic g(Lcom/nianticproject/ingress/InviteActivity;)Lcom/nianticproject/ingress/common/w/b;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/nianticproject/ingress/InviteActivity;->l:Lcom/nianticproject/ingress/common/w/b;

    return-object v0
.end method

.method static synthetic h(Lcom/nianticproject/ingress/InviteActivity;)Lcom/nianticproject/ingress/common/m/a;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/nianticproject/ingress/InviteActivity;->t:Lcom/nianticproject/ingress/common/m/a;

    return-object v0
.end method

.method static synthetic i(Lcom/nianticproject/ingress/InviteActivity;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 47
    iget-object v0, p0, Lcom/nianticproject/ingress/InviteActivity;->r:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Recruit"

    const-string/jumbo v2, "invite"

    invoke-static {v1, v2}, Lcom/nianticproject/ingress/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nianticproject/ingress/InviteActivity;->r:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1, v3}, Landroid/widget/AutoCompleteTextView;->setEnabled(Z)V

    iget-object v1, p0, Lcom/nianticproject/ingress/InviteActivity;->q:Landroid/widget/Button;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/nianticproject/ingress/InviteActivity;->v:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/nianticproject/ingress/InviteActivity;->t:Lcom/nianticproject/ingress/common/m/a;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v0, v2, p0}, Lcom/nianticproject/ingress/common/m/a;->a(ILjava/lang/String;Ljava/lang/String;Lcom/nianticproject/ingress/common/m/d;)V

    return-void
.end method

.method static synthetic j(Lcom/nianticproject/ingress/InviteActivity;)Landroid/widget/AutoCompleteTextView;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/nianticproject/ingress/InviteActivity;->r:Landroid/widget/AutoCompleteTextView;

    return-object v0
.end method

.method static synthetic k(Lcom/nianticproject/ingress/InviteActivity;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/nianticproject/ingress/InviteActivity;->q:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic l(Lcom/nianticproject/ingress/InviteActivity;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/nianticproject/ingress/InviteActivity;->v:Landroid/view/View;

    return-object v0
.end method

.method static synthetic m(Lcom/nianticproject/ingress/InviteActivity;)Lcom/nianticproject/ingress/f/k;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/nianticproject/ingress/InviteActivity;->m:Lcom/nianticproject/ingress/f/k;

    return-object v0
.end method

.method static synthetic n(Lcom/nianticproject/ingress/InviteActivity;)Lcom/nianticproject/ingress/common/w/f;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/nianticproject/ingress/InviteActivity;->i:Lcom/nianticproject/ingress/common/w/f;

    return-object v0
.end method

.method static synthetic o(Lcom/nianticproject/ingress/InviteActivity;)Lcom/nianticproject/ingress/common/w/f;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/nianticproject/ingress/InviteActivity;->k:Lcom/nianticproject/ingress/common/w/f;

    return-object v0
.end method


# virtual methods
.method public final A_()V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 307
    iget-object v0, p0, Lcom/nianticproject/ingress/InviteActivity;->m:Lcom/nianticproject/ingress/f/k;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/f/k;->a(Ljava/util/ArrayList;)V

    .line 308
    return-void
.end method

.method public final a()Landroid/support/v4/a/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/a/d",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nianticproject/ingress/f/a;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 290
    new-instance v0, Lcom/nianticproject/ingress/f/e;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/f/e;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public final a(ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 312
    new-instance v0, Lcom/nianticproject/ingress/bf;

    invoke-direct {v0, p0, p1, p2}, Lcom/nianticproject/ingress/bf;-><init>(Lcom/nianticproject/ingress/InviteActivity;ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/InviteActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 331
    return-void
.end method

.method public final a(ILjava/lang/String;Lcom/nianticproject/ingress/shared/rpc/o;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 336
    new-instance v0, Lcom/nianticproject/ingress/bg;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/nianticproject/ingress/bg;-><init>(Lcom/nianticproject/ingress/InviteActivity;ILcom/nianticproject/ingress/shared/rpc/o;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/InviteActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 355
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/shared/invites/InviteInfo;)V
    .locals 2
    .parameter

    .prologue
    .line 359
    invoke-static {}, Lcom/nianticproject/ingress/common/g/p;->a()Lcom/nianticproject/ingress/common/g/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/g/p;->A()Lcom/nianticproject/ingress/common/m/e;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nianticproject/ingress/shared/invites/InviteInfo;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/m/e;->a(I)V

    .line 361
    new-instance v0, Lcom/nianticproject/ingress/bh;

    invoke-direct {v0, p0, p1}, Lcom/nianticproject/ingress/bh;-><init>(Lcom/nianticproject/ingress/InviteActivity;Lcom/nianticproject/ingress/shared/invites/InviteInfo;)V

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/InviteActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 370
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3
    .parameter

    .prologue
    .line 47
    check-cast p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/nianticproject/ingress/InviteActivity;->b:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v1, "onLoadFinished"

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nianticproject/ingress/InviteActivity;->m:Lcom/nianticproject/ingress/f/k;

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/f/k;->a(Ljava/util/ArrayList;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/f/a;

    iget-object v0, v0, Lcom/nianticproject/ingress/f/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/InviteActivity;->r:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lcom/nianticproject/ingress/InviteActivity;->m:Lcom/nianticproject/ingress/f/k;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/f/k;->c()Lcom/nianticproject/ingress/f/o;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/nianticproject/ingress/InviteActivity;->l:Lcom/nianticproject/ingress/common/w/b;

    iget-object v1, p0, Lcom/nianticproject/ingress/InviteActivity;->h:Lcom/nianticproject/ingress/common/w/f;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/w/b;->a(Lcom/nianticproject/ingress/common/w/d;)V

    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 374
    new-instance v0, Lcom/nianticproject/ingress/bi;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/bi;-><init>(Lcom/nianticproject/ingress/InviteActivity;)V

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/InviteActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 381
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 180
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 182
    const v0, 0x7f03000e

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/InviteActivity;->setContentView(I)V

    .line 183
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/InviteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "coda.ttf"

    invoke-static {p0, v0, v1}, Lcom/nianticproject/ingress/ui/aj;->a(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    .line 186
    invoke-static {p0}, Lcom/nianticproject/ingress/ui/TitleBar;->a(Landroid/app/Activity;)Lcom/nianticproject/ingress/ui/TitleBar;

    move-result-object v0

    .line 187
    const v1, 0x7f09006e

    invoke-virtual {p0, v1}, Lcom/nianticproject/ingress/InviteActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/ui/TitleBar;->a(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v0}, Lcom/nianticproject/ingress/ui/TitleBar;->a()V

    .line 190
    const v0, 0x7f08002f

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/InviteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/InviteActivity;->n:Landroid/view/View;

    .line 191
    const v0, 0x102000d

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/InviteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/InviteActivity;->o:Landroid/view/View;

    .line 192
    const v0, 0x7f08002e

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/InviteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nianticproject/ingress/InviteActivity;->p:Landroid/widget/Button;

    .line 193
    iget-object v0, p0, Lcom/nianticproject/ingress/InviteActivity;->p:Landroid/widget/Button;

    new-instance v1, Lcom/nianticproject/ingress/bc;

    invoke-direct {v1, p0}, Lcom/nianticproject/ingress/bc;-><init>(Lcom/nianticproject/ingress/InviteActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    const v0, 0x7f080031

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/InviteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nianticproject/ingress/InviteActivity;->q:Landroid/widget/Button;

    .line 203
    const v0, 0x7f080030

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/InviteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p0, Lcom/nianticproject/ingress/InviteActivity;->r:Landroid/widget/AutoCompleteTextView;

    .line 204
    const v0, 0x7f080033

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/InviteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nianticproject/ingress/InviteActivity;->s:Landroid/widget/TextView;

    .line 205
    const v0, 0x7f080032

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/InviteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/InviteActivity;->v:Landroid/view/View;

    .line 206
    iget-object v0, p0, Lcom/nianticproject/ingress/InviteActivity;->v:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 207
    invoke-direct {p0, v3}, Lcom/nianticproject/ingress/InviteActivity;->a(I)V

    .line 209
    invoke-static {}, Lcom/nianticproject/ingress/NemesisApplication;->a()Lcom/nianticproject/ingress/NemesisApplication;

    .line 210
    new-instance v0, Lcom/nianticproject/ingress/common/m/a;

    invoke-static {}, Lcom/nianticproject/ingress/NemesisApplication;->f()Lcom/nianticproject/ingress/common/u/b;

    move-result-object v1

    invoke-static {}, Lcom/nianticproject/ingress/ec;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lcom/nianticproject/ingress/common/m/a;-><init>(Lcom/nianticproject/ingress/common/u/b;Ljava/lang/String;Lcom/nianticproject/ingress/common/m/d;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/InviteActivity;->t:Lcom/nianticproject/ingress/common/m/a;

    .line 212
    iget-object v0, p0, Lcom/nianticproject/ingress/InviteActivity;->q:Landroid/widget/Button;

    new-instance v1, Lcom/nianticproject/ingress/bd;

    invoke-direct {v1, p0}, Lcom/nianticproject/ingress/bd;-><init>(Lcom/nianticproject/ingress/InviteActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    iget-object v0, p0, Lcom/nianticproject/ingress/InviteActivity;->q:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 220
    iget-object v0, p0, Lcom/nianticproject/ingress/InviteActivity;->r:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lcom/nianticproject/ingress/be;

    invoke-direct {v1, p0}, Lcom/nianticproject/ingress/be;-><init>(Lcom/nianticproject/ingress/InviteActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 244
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/InviteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 245
    new-instance v1, Lcom/nianticproject/ingress/f/k;

    iget-object v2, p0, Lcom/nianticproject/ingress/InviteActivity;->t:Lcom/nianticproject/ingress/common/m/a;

    invoke-direct {v1, p0, v2, p0}, Lcom/nianticproject/ingress/f/k;-><init>(Landroid/content/Context;Lcom/nianticproject/ingress/common/m/a;Lcom/nianticproject/ingress/common/m/d;)V

    iput-object v1, p0, Lcom/nianticproject/ingress/InviteActivity;->m:Lcom/nianticproject/ingress/f/k;

    .line 246
    iget-object v1, p0, Lcom/nianticproject/ingress/InviteActivity;->m:Lcom/nianticproject/ingress/f/k;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 247
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 249
    invoke-static {}, Lcom/nianticproject/ingress/common/w/b;->a()Lcom/nianticproject/ingress/common/w/c;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/InviteActivity;->c:Lcom/nianticproject/ingress/bk;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/w/c;->a(Lcom/nianticproject/ingress/common/w/h;)Lcom/nianticproject/ingress/common/w/c;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/InviteActivity;->c:Lcom/nianticproject/ingress/bk;

    iget-object v2, p0, Lcom/nianticproject/ingress/InviteActivity;->h:Lcom/nianticproject/ingress/common/w/f;

    iget-object v3, p0, Lcom/nianticproject/ingress/InviteActivity;->d:Lcom/nianticproject/ingress/bk;

    invoke-virtual {v0, v1, v2, v3}, Lcom/nianticproject/ingress/common/w/c;->a(Lcom/nianticproject/ingress/common/w/h;Lcom/nianticproject/ingress/common/w/d;Lcom/nianticproject/ingress/common/w/h;)Lcom/nianticproject/ingress/common/w/c;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/InviteActivity;->c:Lcom/nianticproject/ingress/bk;

    iget-object v2, p0, Lcom/nianticproject/ingress/InviteActivity;->i:Lcom/nianticproject/ingress/common/w/f;

    iget-object v3, p0, Lcom/nianticproject/ingress/InviteActivity;->e:Lcom/nianticproject/ingress/bk;

    invoke-virtual {v0, v1, v2, v3}, Lcom/nianticproject/ingress/common/w/c;->a(Lcom/nianticproject/ingress/common/w/h;Lcom/nianticproject/ingress/common/w/d;Lcom/nianticproject/ingress/common/w/h;)Lcom/nianticproject/ingress/common/w/c;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/InviteActivity;->c:Lcom/nianticproject/ingress/bk;

    iget-object v2, p0, Lcom/nianticproject/ingress/InviteActivity;->k:Lcom/nianticproject/ingress/common/w/f;

    iget-object v3, p0, Lcom/nianticproject/ingress/InviteActivity;->g:Lcom/nianticproject/ingress/bk;

    invoke-virtual {v0, v1, v2, v3}, Lcom/nianticproject/ingress/common/w/c;->a(Lcom/nianticproject/ingress/common/w/h;Lcom/nianticproject/ingress/common/w/d;Lcom/nianticproject/ingress/common/w/h;)Lcom/nianticproject/ingress/common/w/c;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/InviteActivity;->d:Lcom/nianticproject/ingress/bk;

    iget-object v2, p0, Lcom/nianticproject/ingress/InviteActivity;->i:Lcom/nianticproject/ingress/common/w/f;

    iget-object v3, p0, Lcom/nianticproject/ingress/InviteActivity;->f:Lcom/nianticproject/ingress/bk;

    invoke-virtual {v0, v1, v2, v3}, Lcom/nianticproject/ingress/common/w/c;->a(Lcom/nianticproject/ingress/common/w/h;Lcom/nianticproject/ingress/common/w/d;Lcom/nianticproject/ingress/common/w/h;)Lcom/nianticproject/ingress/common/w/c;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/InviteActivity;->d:Lcom/nianticproject/ingress/bk;

    iget-object v2, p0, Lcom/nianticproject/ingress/InviteActivity;->k:Lcom/nianticproject/ingress/common/w/f;

    iget-object v3, p0, Lcom/nianticproject/ingress/InviteActivity;->g:Lcom/nianticproject/ingress/bk;

    invoke-virtual {v0, v1, v2, v3}, Lcom/nianticproject/ingress/common/w/c;->a(Lcom/nianticproject/ingress/common/w/h;Lcom/nianticproject/ingress/common/w/d;Lcom/nianticproject/ingress/common/w/h;)Lcom/nianticproject/ingress/common/w/c;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/InviteActivity;->e:Lcom/nianticproject/ingress/bk;

    iget-object v2, p0, Lcom/nianticproject/ingress/InviteActivity;->h:Lcom/nianticproject/ingress/common/w/f;

    iget-object v3, p0, Lcom/nianticproject/ingress/InviteActivity;->f:Lcom/nianticproject/ingress/bk;

    invoke-virtual {v0, v1, v2, v3}, Lcom/nianticproject/ingress/common/w/c;->a(Lcom/nianticproject/ingress/common/w/h;Lcom/nianticproject/ingress/common/w/d;Lcom/nianticproject/ingress/common/w/h;)Lcom/nianticproject/ingress/common/w/c;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/InviteActivity;->g:Lcom/nianticproject/ingress/bk;

    iget-object v2, p0, Lcom/nianticproject/ingress/InviteActivity;->j:Lcom/nianticproject/ingress/common/w/f;

    iget-object v3, p0, Lcom/nianticproject/ingress/InviteActivity;->c:Lcom/nianticproject/ingress/bk;

    invoke-virtual {v0, v1, v2, v3}, Lcom/nianticproject/ingress/common/w/c;->a(Lcom/nianticproject/ingress/common/w/h;Lcom/nianticproject/ingress/common/w/d;Lcom/nianticproject/ingress/common/w/h;)Lcom/nianticproject/ingress/common/w/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/w/c;->b()Lcom/nianticproject/ingress/common/w/b;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/InviteActivity;->l:Lcom/nianticproject/ingress/common/w/b;

    .line 250
    iget-object v0, p0, Lcom/nianticproject/ingress/InviteActivity;->l:Lcom/nianticproject/ingress/common/w/b;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/w/b;->b()V

    .line 251
    invoke-virtual {p0}, Lcom/nianticproject/ingress/InviteActivity;->getSupportLoaderManager()Landroid/support/v4/app/w;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/app/w;->a(Landroid/support/v4/app/x;)Landroid/support/v4/a/d;

    .line 252
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/nianticproject/ingress/InviteActivity;->m:Lcom/nianticproject/ingress/f/k;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/f/k;->b()V

    .line 264
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 267
    invoke-static {}, Lcom/nianticproject/ingress/common/a/c;->c()V

    .line 268
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 256
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 257
    iget-object v0, p0, Lcom/nianticproject/ingress/InviteActivity;->m:Lcom/nianticproject/ingress/f/k;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/f/k;->a()V

    .line 258
    iget-object v0, p0, Lcom/nianticproject/ingress/InviteActivity;->t:Lcom/nianticproject/ingress/common/m/a;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/m/a;->a()V

    .line 259
    return-void
.end method
