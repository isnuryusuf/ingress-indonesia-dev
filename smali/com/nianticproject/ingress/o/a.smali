.class public Lcom/nianticproject/ingress/o/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/nianticproject/ingress/common/w/aa;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/o/a;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/nianticproject/ingress/o/a;->a:Lcom/nianticproject/ingress/common/w/aa;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public static a(Landroid/content/Intent;)Landroid/accounts/Account;
    .locals 3
    .parameter

    .prologue
    .line 76
    new-instance v0, Landroid/accounts/Account;

    const-string/jumbo v1, "authAccount"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "accountType"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Landroid/content/Intent;Landroid/accounts/Account;)Landroid/content/Intent;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 64
    const-string/jumbo v0, "authAccount"

    iget-object v1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    const-string/jumbo v0, "accountType"

    iget-object v1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    return-object p0
.end method

.method public static a(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string/jumbo v1, "com.google"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static a()V
    .locals 2

    .prologue
    .line 141
    invoke-static {}, Lcom/nianticproject/ingress/NemesisApplication;->a()Lcom/nianticproject/ingress/NemesisApplication;

    invoke-static {}, Lcom/nianticproject/ingress/NemesisApplication;->f()Lcom/nianticproject/ingress/common/u/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/u/b;->d()V

    .line 142
    invoke-static {}, Lcom/nianticproject/ingress/common/s/c;->b()V

    .line 144
    invoke-static {}, Lcom/nianticproject/ingress/NemesisApplication;->a()Lcom/nianticproject/ingress/NemesisApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gcm/a;->b(Landroid/content/Context;)V

    .line 145
    sget-object v0, Lcom/nianticproject/ingress/o/a;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v1, "Cleared account data."

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;->b(Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public static a(Landroid/accounts/Account;)V
    .locals 2
    .parameter

    .prologue
    .line 107
    iget-object v0, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/s/c;->a(Ljava/lang/String;)V

    .line 108
    sget-object v0, Lcom/nianticproject/ingress/o/b;->b:Lcom/nianticproject/ingress/o/b;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/o/b;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nianticproject/ingress/common/s/c;->g(Ljava/lang/String;)V

    .line 114
    const-string/jumbo v0, "com.nianticproject.ingress.content.NemesisProvider"

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-static {p0, v0, v1}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 115
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 221
    new-instance v0, Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/nianticproject/ingress/NemesisActivity;

    invoke-direct {v0, p1, v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 229
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 230
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 231
    return-void
.end method

.method public static a(Lcom/nianticproject/ingress/o/b;)V
    .locals 1
    .parameter

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/nianticproject/ingress/o/b;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nianticproject/ingress/common/s/c;->g(Ljava/lang/String;)V

    .line 212
    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 96
    invoke-static {}, Lcom/nianticproject/ingress/o/a;->a()V

    .line 97
    const-string/jumbo v0, "com.nianticproject.ingress.ACTION_QUIT"

    invoke-static {p0, v0}, Lcom/nianticproject/ingress/o/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/nianticproject/ingress/common/s/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c()Landroid/accounts/Account;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 164
    invoke-static {}, Lcom/nianticproject/ingress/o/a;->b()Z

    move-result v1

    if-nez v1, :cond_0

    .line 167
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Landroid/accounts/Account;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/s/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "com.google"

    invoke-direct {v1, v0, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 123
    const-string/jumbo v0, "com.nianticproject.ingress.ACTION_QUIT"

    invoke-static {p0, v0}, Lcom/nianticproject/ingress/o/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public static d()Lcom/nianticproject/ingress/o/b;
    .locals 5

    .prologue
    .line 192
    sget-object v0, Lcom/nianticproject/ingress/o/b;->a:Lcom/nianticproject/ingress/o/b;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/o/b;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nianticproject/ingress/common/s/c;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 196
    :try_start_0
    invoke-static {v0}, Lcom/nianticproject/ingress/o/b;->valueOf(Ljava/lang/String;)Lcom/nianticproject/ingress/o/b;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 204
    :goto_0
    return-object v0

    .line 198
    :catch_0
    move-exception v1

    sget-object v1, Lcom/nianticproject/ingress/o/a;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v2, "unrecognized AccountStatus value=%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/nianticproject/ingress/common/w/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    sget-object v0, Lcom/nianticproject/ingress/o/b;->a:Lcom/nianticproject/ingress/o/b;

    goto :goto_0

    .line 201
    :catch_1
    move-exception v0

    sget-object v0, Lcom/nianticproject/ingress/o/a;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v1, "AccountStatus was null"

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;->b(Ljava/lang/String;)V

    .line 202
    sget-object v0, Lcom/nianticproject/ingress/o/b;->a:Lcom/nianticproject/ingress/o/b;

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 132
    const-string/jumbo v0, "com.nianticproject.ingress.ACTION_HARD_RESTART"

    invoke-static {p0, v0}, Lcom/nianticproject/ingress/o/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public static e(Landroid/content/Context;)Z
    .locals 2
    .parameter

    .prologue
    .line 178
    invoke-static {}, Lcom/nianticproject/ingress/o/a;->c()Landroid/accounts/Account;

    move-result-object v0

    .line 179
    if-nez v0, :cond_0

    .line 180
    const/4 v0, 0x0

    .line 182
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/nianticproject/ingress/o/a;->a(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static f(Landroid/content/Context;)Lcom/nianticproject/ingress/shared/Result;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/nianticproject/ingress/shared/Result",
            "<",
            "Landroid/accounts/Account;",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 242
    invoke-static {}, Lcom/nianticproject/ingress/o/a;->c()Landroid/accounts/Account;

    move-result-object v0

    .line 243
    if-eqz v0, :cond_0

    .line 244
    invoke-static {v0}, Lcom/nianticproject/ingress/shared/Result;->a(Ljava/lang/Object;)Lcom/nianticproject/ingress/shared/Result;

    move-result-object v0

    .line 246
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nianticproject/ingress/AccountsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/Result;->b(Ljava/lang/Object;)Lcom/nianticproject/ingress/shared/Result;

    move-result-object v0

    goto :goto_0
.end method
