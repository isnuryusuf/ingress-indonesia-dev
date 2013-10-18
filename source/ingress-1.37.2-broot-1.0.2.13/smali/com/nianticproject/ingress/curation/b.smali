.class public final Lcom/nianticproject/ingress/curation/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 35
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    sput-object v0, Lcom/nianticproject/ingress/curation/b;->a:Ljava/util/Random;

    return-void
.end method

.method public static a()Landroid/content/Intent;
    .locals 5

    .prologue
    .line 158
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.SYNC_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 159
    const-string/jumbo v1, "authorities"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "com.nianticproject.ingress.content.NemesisProvider"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    return-object v0
.end method

.method private static a(Landroid/content/Context;Lcom/nianticproject/ingress/curation/PortalCurationTask;Landroid/accounts/Account;)Lcom/nianticproject/ingress/curation/c;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 107
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    sget-object v0, Lcom/nianticproject/ingress/curation/c;->c:Lcom/nianticproject/ingress/curation/c;

    .line 114
    :goto_0
    return-object v0

    .line 111
    :cond_0
    const-string/jumbo v0, "com.nianticproject.ingress.content.NemesisProvider"

    invoke-static {p2, v0}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "com.nianticproject.ingress.content.NemesisProvider"

    const/4 v1, 0x1

    invoke-static {p2, v0, v1}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 112
    :cond_1
    invoke-static {p0, p1}, Lcom/nianticproject/ingress/service/NemesisService;->a(Landroid/content/Context;Lcom/nianticproject/ingress/curation/PortalCurationTask;)I

    .line 114
    sget-object v0, Lcom/nianticproject/ingress/curation/c;->b:Lcom/nianticproject/ingress/curation/c;

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;)Lcom/nianticproject/ingress/curation/c;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 202
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string/jumbo v3, "The portal GUID must not be empty!"

    invoke-static {v0, v3}, Lcom/google/a/a/an;->a(ZLjava/lang/Object;)V

    .line 203
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    const-string/jumbo v0, "Reason must be non-empty!"

    invoke-static {v1, v0}, Lcom/google/a/a/an;->a(ZLjava/lang/Object;)V

    .line 205
    invoke-static {}, Lcom/nianticproject/ingress/common/q;->c()Lcom/nianticproject/ingress/shared/curation/PortalDiscoveryKnobBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/curation/PortalDiscoveryKnobBundle;->d()Z

    move-result v0

    .line 207
    if-eqz v0, :cond_2

    invoke-static {}, Lcom/nianticproject/ingress/o/a;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 208
    invoke-static {}, Lcom/nianticproject/ingress/curation/b;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v0, p1, p2, v1}, Lcom/nianticproject/ingress/curation/PortalCurationTask;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/nianticproject/ingress/curation/PortalCurationTask;

    move-result-object v0

    .line 210
    invoke-static {p0, v0, p3}, Lcom/nianticproject/ingress/curation/b;->a(Landroid/content/Context;Lcom/nianticproject/ingress/curation/PortalCurationTask;Landroid/accounts/Account;)Lcom/nianticproject/ingress/curation/c;

    move-result-object v0

    .line 213
    :goto_2
    return-object v0

    :cond_0
    move v0, v2

    .line 202
    goto :goto_0

    :cond_1
    move v1, v2

    .line 203
    goto :goto_1

    .line 213
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/a/d/u;Landroid/net/Uri;Landroid/accounts/Account;)Lcom/nianticproject/ingress/curation/c;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 130
    const-string/jumbo v0, "Location must never be null!"

    invoke-static {p3, v0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string/jumbo v3, "Title must never be null or empty!"

    invoke-static {v0, v3}, Lcom/google/a/a/an;->a(ZLjava/lang/Object;)V

    .line 132
    const-string/jumbo v0, "A photo must be provided when submitting a new portal!"

    invoke-static {p4, v0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    invoke-static {}, Lcom/nianticproject/ingress/common/q;->c()Lcom/nianticproject/ingress/shared/curation/PortalDiscoveryKnobBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/curation/PortalDiscoveryKnobBundle;->d()Z

    move-result v0

    .line 140
    if-eqz v0, :cond_1

    invoke-static {}, Lcom/nianticproject/ingress/o/a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/nianticproject/ingress/common/s/c;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    invoke-static {}, Lcom/nianticproject/ingress/curation/b;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v6, p5, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v6}, Lcom/nianticproject/ingress/curation/PortalCurationTask;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/a/d/u;Landroid/net/Uri;Ljava/lang/String;)Lcom/nianticproject/ingress/curation/PortalCurationTask;

    move-result-object v0

    .line 144
    invoke-static {p0, v0, p5}, Lcom/nianticproject/ingress/curation/b;->a(Landroid/content/Context;Lcom/nianticproject/ingress/curation/PortalCurationTask;Landroid/accounts/Account;)Lcom/nianticproject/ingress/curation/c;

    move-result-object v0

    .line 148
    :goto_1
    return-object v0

    :cond_0
    move v0, v2

    .line 131
    goto :goto_0

    .line 147
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.SEND"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "plain/text"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x1000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.extra.EMAIL"

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v4, "super-ops@google.com"

    aput-object v4, v1, v2

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "lat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Lcom/google/a/d/u;->c()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "lng="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Lcom/google/a/d/u;->f()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "desc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string/jumbo v2, "android.intent.extra.TEXT"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 148
    sget-object v0, Lcom/nianticproject/ingress/curation/c;->a:Lcom/nianticproject/ingress/curation/c;

    goto/16 :goto_1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/a/d/u;Landroid/net/Uri;Landroid/accounts/Account;)Lcom/nianticproject/ingress/curation/c;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 183
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    const-string/jumbo v3, "The portal GUID must not be empty!"

    invoke-static {v0, v3}, Lcom/google/a/a/an;->a(ZLjava/lang/Object;)V

    .line 184
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p4, :cond_0

    if-eqz p5, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    const-string/jumbo v0, "At least one field must be non-empty!"

    invoke-static {v2, v0}, Lcom/google/a/a/an;->a(ZLjava/lang/Object;)V

    .line 187
    invoke-static {p6}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    invoke-static {}, Lcom/nianticproject/ingress/common/q;->c()Lcom/nianticproject/ingress/shared/curation/PortalDiscoveryKnobBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/curation/PortalDiscoveryKnobBundle;->d()Z

    move-result v0

    .line 191
    if-eqz v0, :cond_3

    invoke-static {}, Lcom/nianticproject/ingress/o/a;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 192
    invoke-static {}, Lcom/nianticproject/ingress/curation/b;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v6, p6, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/nianticproject/ingress/curation/PortalCurationTask;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/a/d/u;Landroid/net/Uri;Ljava/lang/String;)Lcom/nianticproject/ingress/curation/PortalCurationTask;

    move-result-object v0

    .line 194
    invoke-static {p0, v0, p6}, Lcom/nianticproject/ingress/curation/b;->a(Landroid/content/Context;Lcom/nianticproject/ingress/curation/PortalCurationTask;Landroid/accounts/Account;)Lcom/nianticproject/ingress/curation/c;

    move-result-object v0

    .line 197
    :goto_1
    return-object v0

    :cond_2
    move v0, v2

    .line 183
    goto :goto_0

    .line 197
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static b()Ljava/lang/String;
    .locals 4

    .prologue
    .line 60
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy_MM_dd_HH:mm:ss.SSSZ"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/nianticproject/ingress/curation/b;->a:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
